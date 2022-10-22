class CreateTimeRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :time_records do |t|
      t.integer "user_id"
      t.datetime "date"
      t.datetime "time"
      t.integer "log_type"
      t.integer "status", default: 0
      t.string "comment"
      t.timestamps
    end
  end
end
