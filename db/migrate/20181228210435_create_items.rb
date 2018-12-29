class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.boolean :checked, null: false
      t.references :check_list, foreign_key: true, null: false

      t.timestamps
    end
  end
end
