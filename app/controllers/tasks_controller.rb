class TasksController < ApplicationController
	def index
	  @project =Project.find(params[:project_id])
	  @tasks = @project.tasks
	  respond_to do |format|
      format.html {redirect_to projects_path(@project)}
      format.js
      end
	end

	def new
		@project = Project.find(params[:project_id])
		@task = Task.new	
	end
	def create
		@project =Project.find(params[:project_id])
	    @tasks = @project.tasks
		@task = @project.tasks.create(tasks_params)
		respond_to do |format|
          format.html {redirect_to projects_path(@project)}
          format.js
      end
	end

	def edit
		@project = Project.find(params[:project_id])
		@task = @project.tasks.find(params[:id])
#		redirect_to edit_project_task_path
#		task = Task.find(params[:id])
	end

	def update
		@project =Project.find(params[:project_id])
	    @tasks = @project.tasks
		@task = @project.tasks.find(params[:id])
		@task.update(tasks_params)
		respond_to do |format|
          format.html {redirect_to projects_path(@project)}
          format.js
      end
	end

	def destroy
		@project = Project.find(params[:project_id])
		@tasks = @project.tasks
		@task = @project.tasks.find(params[:id])
		@task.destroy
		respond_to do |format|
        format.html {redirect_to project_tasks_path(@project)}
        format.js
      end
	#		redirect_to project_path(@project)
	end

	def complete
	  @project = Project.find(params[:project_id])
      @task= Task.find(params[:task_id])
      @task.update(complete: !@task.complete)
      respond_to do |format|
      format.html {redirect_to project_tasks_path(@project)}
      format.js
    end
end

	  private
    def tasks_params
      params.require(:task).permit(:name, :complete, :priority, :deadline)
    end
end
