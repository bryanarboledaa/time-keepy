class DropUserTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :users do |t|
      t.string "first_name"
      t.string "last_name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
