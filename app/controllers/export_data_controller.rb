class ExportDataController < ApplicationController
  require 'csv'

  def export_time_logs
    @users = User.all
    @time_logs = TimeRecord.all.where(user_id: current_user.id)

    respond_to do |format|
      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = "attachment"
      end
    end
  end
end
