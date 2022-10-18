class CreateTimeRecord < ActiveRecord::Migration[7.0]
  def change
    create_table :time_records do |t|
      t.datetime :date
      t.time :time
      t.string :log_type
      t.string :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
