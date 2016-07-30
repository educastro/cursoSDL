class TasksController < ApplicationController

	def create
		@task = Task.new(task_params)
		@task.save
	  	redirect_to '/tasks'
	end
	
	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		
	end

	private
  	def task_params
    	params.require(:task).permit(:title)
  	end
end
