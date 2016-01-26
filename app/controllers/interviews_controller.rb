class InterviewsController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    @interviewees = User.where(user_type: "interviewee")
    @interviewers = User.where(user_type: "interviewer")
    @admins = User.where(user_type: "admin")

    @interviews = Interview.all
    @interviews_scheduled = Interview.where(scheduled: true)
    @interviews_scheduled_for_interviewer = @interviews_scheduled.where(interviewer_email: current_user.email)
    @interviews_scheduled_for_interviewee = @interviews_scheduled.where(interviewee_email: current_user.email)
    @interviews_unscheduled = Interview.where(scheduled: false)
    @interviews_unscheduled_for_interviewee = @interviews_unscheduled.where(interviewee_email: current_user.email)
    @interview = Interview.new

  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params1)
    if @interview.save
      current_user.interviews << @interview
      flash[:notice] = "Interview created!"
      redirect_to interviews_path
    else
      flash[:notice] = "Interview could not be created!"
      redirect_to interviews_path
    end
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    if @interview.update(interview_params2)
      flash[:notice] = "Interview updated!"
      redirect_to interviews_path
    else
      flash[:notice] = "Interview could not be updated!"
      redirect_to interviews_path
    end
  end

  private

  def interview_params1
    params.require(:interview).permit(:interviewee_email,:interview_date)
  end

  def interview_params2
    params.require(:interview).permit(:interviewer_email, :scheduled)
  end

end