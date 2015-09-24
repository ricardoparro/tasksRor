class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  end
  def create
  
  	@task = Task.new
  	@task.task = params[:task][:task]
  	@task.save
  	redirect_to :back

  end 
end
