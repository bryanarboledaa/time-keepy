class UserPagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all.find_by_id(current_user.id)
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

  def members
    @members = User.all.where(role: 0)
  end

  def add_member
  end

  def create_member
    @member = User.new(params.require(:user).permit(:first_name, :last_name, :email, :role, :password, :password_confirmation))

    if @member.save
      flash[:notice] = "Member successfully added"
      redirect_to user_members_path
    else
      flash[:error] = "Failed to add member"
      redirect_to :back
    end
  end

  def requests
    @requests = TimeRecord.where(status: 0)
  end

  def approve_request
    @request = TimeRecord.find_by_id(params[:id])
    @request.update(status: 1)
    
    return unless @request.save

    redirect_to user_requests_path
  end

  def reject_request
    @request = TimeRecord.find_by_id(params[:id])
    @request.update(status: 2)

    return unless @request.save

    redirect_to user_requests_path
  end
  
end
