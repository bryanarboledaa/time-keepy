class ChangeColumnTypeOfLogType < ActiveRecord::Migration[7.0]
  def change
    remove_column :time_records, :log_type, :string
  end
end
