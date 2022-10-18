class UserPagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @time_records = TimeRecord.all.where(user_id: current_user.id)
  end

  def time_in
    @time_in = TimeRecord.new(date: Date.current, time: Time.now, log_type: 0, user_id: current_user.id)

    @time_in.save
  end

  def time_out
    @time_out = TimeRecord.new(date: Date.current, time: Time.now, log_type: 1, user_id: current_user.id)

    @time_out.save
  end

  def new
    @time_record = TimeRecord.new
  end

  def create
    @time_record = TimeRecord.new(date: params[:date], time: params[:time], log_type: params[:log_type], comment: params[:comment], user_id: 1)

    if @time_record.save
      redirect_to user_home_path
    else
      redirect_to :back
    end
  end

  def destroy
  end

  private

  def time_records_params
    params.require(:time_record).permit(:time_in, :time_out, :user_id)
  end
  
end
