class CreateTimeRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :time_records do |t|
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
