class TasksController < ApplicationController

  def create
    @project =Project.find(params[:project_id])
    @task = @project.tasks.create(tasks_params)
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:project_id])
	@task = @project.tasks.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    if @task.update(tasks_params)
      redirect_to project_path(@project)
    else
      render 'edit'
    end
	
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

private
  def tasks_params
    params.require(:task).permit(:name)
  end
end
