class AdminsController < ApplicationController

  before_action :authenticate_admin!

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  private

  def safe_post_params

  end

end