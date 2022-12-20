class CreateGachaUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :gacha_units do |t|
      t.string :uuid, null: false, comment: 'uuid'
      t.timestamps
    end
  end
end
