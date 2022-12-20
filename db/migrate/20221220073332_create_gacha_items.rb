class CreateGachaItems < ActiveRecord::Migration[7.0]
  def change
    create_table :gacha_items do |t|
      t.references :gacha_unit, foreign_key: true, comment: 'GachaUnit外部キー'
      t.boolean :is_chosen, default: false, comment: '選択されたかどうか'
      t.unsigned_integer :order, null: false, comment: '順番'
      t.timestamps
    end
  end
end
