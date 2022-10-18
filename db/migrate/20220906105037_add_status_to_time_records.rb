class AddStatusToTimeRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :time_records, :status, :integer
  end
end
