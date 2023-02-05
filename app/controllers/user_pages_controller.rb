class UserPagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @time_records = TimeRecord.all.where(user_id: current_user.id)
    @requests = TimeRecord.all
    @time = Time.now.strftime("%H:%M:%S ")
  end

  def time_logs
    @all_users = User.all
    @user = User.find_by(id: params[:id])
    @time_logs = TimeRecord.all.where(user_id: params[:user_id])

  end

  def requests
    @requests = TimeRecord.all.page(params[:page])
  end

  def members
    @members = User.all
  end

  def time_in
    @time_in = TimeRecord.new(date: Date.current, time: Time.now, log_type: 0, user_id: current_user.id)

    @time_in.save
  end

  def time_out
    @time_out = TimeRecord.new(date: Date.current, time: Time.now, log_type: 1, user_id: current_user.id)

    @time_out.save
  end

  def approve_time_log
    @time_log = TimeRecord.find_by(id: params[:id])

    @time_log.update(status: 1)
    if @time_log.save
      flash[:notice] = "Time log successfully approved"
      redirect_to admin_requests_path
    else
      flash[:error] = "Error approving time log"
      redirect_to :back
    end
  end

  def reject_time_log
    @time_log = TimeRecord.find_by(id: params[:id])

    @time_log.update(status: 2)

    if @time_log.save
      flash[:notice] = "Time log rejected"
      redirect_to admin_requests_path
    else
      flash[:error] = "Error rejecting time log"
      redirect_to :back
    end
  end

  def new
    @time_record = TimeRecord.new
  end

  def create
    @time_record = TimeRecord.new(time_records_params)

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
    params.require(:time_records).permit(:date, :time, :log_type, :comments, :user_id)
  end
  
end
