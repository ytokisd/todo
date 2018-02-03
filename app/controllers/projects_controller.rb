class ProjectsController < ApplicationController

  def index
    @projects = current_user.projects.all
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks
  end

  def new
  	@project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = current_user.projects.create(project_params)
    # comment
    # redirect_to users_path()
    redirect_to projects_path
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end
  def destroy
    Project.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def project_params
      params.require(:project).permit(:name, :description)
    end
  end
