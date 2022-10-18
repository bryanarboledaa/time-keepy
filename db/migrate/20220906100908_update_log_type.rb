class UpdateLogType < ActiveRecord::Migration[7.0]
  def change
    add_column :time_records, :log_type, :integer
  end
end
