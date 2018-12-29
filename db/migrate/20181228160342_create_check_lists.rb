class CreateCheckLists < ActiveRecord::Migration[5.2]
  def change
    create_table :check_lists do |t|
      t.string :title, null: false
      t.string :token, index: { unique: true }, null: false

      t.timestamps
    end
  end
end
