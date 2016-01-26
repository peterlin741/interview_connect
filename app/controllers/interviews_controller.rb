class InterviewsController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    @interviewees = User.where(user_type: "interviewee")
    @interviewers = User.where(user_type: "interviewer")
    @admins = User.where(user_type: "admin")

  end

  def show

  end

end