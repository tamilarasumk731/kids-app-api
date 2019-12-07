class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :name, null: false, length: 6
      t.string :result, null: false, length: 15
      t.string :image_url, null: false
      t.timestamps
    end
    add_index :words, :name
  end
end
