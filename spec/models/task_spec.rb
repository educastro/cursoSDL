require 'rails_helper'

RSpec.describe Task, type: :model do
	
	describe "#create" do
		before :each do
			@task = Task.new(:title => "teste")
		end

		it "creates the task and returns an object with the proper class" do
			expect(@task).to be_a Task
		end

		it "creates the task with the proper value" do
			expect(@task.title).to match("teste")
		end

		it "creatcreates the task with the proper isDone value if it is not informed" do
			expect(@task.title).to match("teste")
			expect(@task.isDone).to match (false)
		end

		it "creates the task with the proper isDone value if it is informed" do
			@newTask = Task.new(:title => "teste2", :isDone => true)
			expect(@newTask.title).to match("teste2")
			expect(@newTask.isDone).to match (true)
		end
	end

	describe "#isDone?, #markTheTaskAsDone and #markTheTaskAsUndone" do
		before :each do
			@task = Task.new(:title => "teste")
			@task2 = Task.new(:title => "teste2", :isDone => true)
		end

		it "tests the return of isDone?" do
			expect(@task.isDone?).to match (false)
			expect(@task2.isDone?).to match (true)
 
		end

		it "test if the states of tasks are changing" do
			expect(@task.isDone?).to match (false)
			@task.markTheTaskAsDone
			expect(@task.isDone?).to match (true)

			expect(@task2.isDone?).to match (true)
			@task2.markTheTaskAsUndone
			expect(@task2.isDone?).to match (false)
		end
	end
end