class InterviewsController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    @interviewees = User.where(user_type: "interviewee")
    @interviewers = User.where(user_type: "interviewer")
    @admins = User.where(user_type: "admin")

    @interview = Interview.new

  end

  def show

  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    if @interview.save
      current_user.interviews << @interview
      flash[:notice] = "Interview saved!"
      redirect_to interviews_path
    else
      flash[:notice] = "Interview could not be created!"
      redirect_to interviews_path
    end
  end

  private

  def interview_params
    params.require(:interview).permit(:interviewee_email,:interview_date)
  end

end