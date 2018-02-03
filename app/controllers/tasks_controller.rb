class TasksController < ApplicationController

	def create
		@project =Project.find(params[:project_id])
		@task = @project.tasks.create(tasks_params)
		redirect_to project_path(@project)
	end

	def edit
		@project = Project.find(params[:project_id])
		@task = @project.tasks.find(params[:id])
#		redirect_to edit_project_task_path
	end

	def update
#		@project = Project.find(params[:project_id])
		@task = Task.find(params[:id])
		  if @task.update(tasks_params)
            redirect_to root_path
          else
            render 'edit'
    end
#		redirect_to project_path(@project)	
	end

	def destroy
		@project = Project.find(params[:project_id])
		@task = @project.tasks.find(params[:id])
		@task.destroy
	#		redirect_to project_path(@project)
	end

	  private
    def tasks_params
      params.require(:task).permit(:name)
    end
end
