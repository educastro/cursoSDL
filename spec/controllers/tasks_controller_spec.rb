require 'rails_helper'

RSpec.describe TasksController, type: :controller do

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
	end


	describe "GET #index" do
	    it "responds successfully with an HTTP 200 status code" do
	      get :index
	      expect(response).to be_success
	      expect(response).to have_http_status(200)
	 	end

	    it "renders the index template" do
	      get :index
	      expect(response).to render_template("index")
	    end

	    it "loads all of the posts into @tasks" do
	      task1, task2 = Task.create!, Task.create!
	      get :index

	      expect(assigns(:tasks)).to match_array([task1, task2])
	    end
  	end
end