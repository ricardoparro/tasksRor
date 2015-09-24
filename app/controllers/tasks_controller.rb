class TasksController < ApplicationController
  def index
  	@task = Task.new
  	@tasks = Task.all
  end
  def create
  
  	@task = Task.new
  	@task.task = params[:task][:task]
  	@task.save
  	redirect_to :back

  end 
  def edit
  	@task = Task.find params[:id]
  end
end
