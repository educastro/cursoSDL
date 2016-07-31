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

	def markAsDone
		@task = Task.find(params[:id])
		@task.markTheTaskAsDone
		redirect_to '/tasks'
	end

	def markAsUndone
		@task = Task.find(params[:id])
		@task.markTheTaskAsUndone
		redirect_to '/tasks'	
	end

	private
  	def task_params
    	params.require(:task).permit(:title, :isDone)
  	end
end
