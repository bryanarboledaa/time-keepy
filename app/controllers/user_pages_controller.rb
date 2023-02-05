class UserPagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @time_records = TimeRecord.all.where(user_id: current_user.id)
    @requests = TimeRecord.all
    @time = Time.now.strftime("%H:%M:%S ")
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
