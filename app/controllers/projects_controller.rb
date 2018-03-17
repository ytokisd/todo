class ProjectsController < ApplicationController

  def index

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
    respond_to do |format|
      format.html {redirect_to projects_path}
      format.js
    end    
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    respond_to do |format|
      format.html {redirect_to projects_path}
      format.js
    end
  end

  def destroy
    @project = Project.find(params[:id]).destroy
    respond_to do |format|
      format.html {redirect_to projects_path}
      format.js
    end    
  end

  private
    def project_params
      params.require(:project).permit(:name)
    end
end