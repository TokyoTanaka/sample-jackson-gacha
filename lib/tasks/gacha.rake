# frozen_string_literal: true

namespace :gacha do
  desc 'Gachaの個数を作成する'
  task :create, ['size'] => :environment do |_task, args|
    puts "#{args[:size]}個作成します"
    inputed_size = args[:size]
    unless inputed_size.to_i.positive? || Regexp.new(/^[0-9]+$/) =~ inputed_size
      puts '数字で入力してください'
      exit
    end
    inputed_size = inputed_size.to_i
    gacha_unit = GachaUnit.create
    inputed_size.times do |time|
      gacha_unit.gacha_items.create(order: time + 1)
    end
    puts "gacha uuid: #{gacha_unit.uuid}"
    puts_list(gacha_unit)
  end

  task :run, ['uuid'] => :environment do |_task, args|
    # puts 'Start: task=[gacha:run]'
    inputed_uuid = args[:uuid]
    gacha_unit = find_by_uuid(inputed_uuid)
    no_chosen_items = gacha_unit.gacha_items.where(is_chosen: false)
    chosen_item = no_chosen_items.sample
    if chosen_item.present?
      chosen_order = chosen_item.order
      chosen_item.update(is_chosen: true)
      puts "選ばれたのは、[#{chosen_order}]番です！"
    else
      puts '最終結果はこちら！'
    end
    puts_list(gacha_unit)
  end

  task :list, ['uuid'] => :environment do |_task, args|
    inputed_uuid = args[:uuid]
    gacha_unit = if inputed_uuid.present?
                   GachaUnit.find_by_uuid(inputed_uuid)
                 else
                   GachaUnit.includes(:gacha_items).last
                 end
    puts_list(gacha_unit)
  end
end

def find_by_uuid(uuid)
  uuid.present? ? GachaUnit.find_by_uuid(uuid) : GachaUnit.includes(:gacha_items).last
end

def puts_list(gacha_unit)
  unless gacha_unit.present?
    puts 'ガチャが存在しません'
    exit
  end
  gacha_items = gacha_unit.gacha_items
  if gacha_items.blank?
    puts '表示する対象が存在しません'
    exit
  end
  puts '========='
  gacha_unit.gacha_items.order(:order).each do |gacha_item|
    puts "#{format('%02<number>d番：', number: gacha_item.order)}#{gacha_item.is_chosen ? '✓' : '-'}"
  end
  puts "gacha: #{gacha_unit.uuid}"
  puts '========='
end
