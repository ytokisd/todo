class HomeController < ApplicationController
  def index
    @projects = current_user.projects
  end

  def create
  end

  def new
  end
end