class TimeRecordsController < ApplicationController
  before_action :authenticate_user!

  def index
    @time_records = TimeRecord.all.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @time_record = TimeRecord.new
  end

  def create
    @time_record = TimeRecord.new(date: params[:date], time: params[:time], log_type: params[:log_type], comments: params[:comments], user_id: current)

    if @time_record.save
      redirect_to time_records_home_path
    else
      redirect_to :back
    end
  end
  
end
