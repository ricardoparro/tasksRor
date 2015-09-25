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

  def update 
  	@task = Task.find params[:id]
  	@task.task = params[:task][:task]
  	if @task.save
  		redirect_to tasks_path, :notice => 'Your task has successfully been updated.'
  	else
  		redirect_to :back, :notice => "There was an error updating your task."
  	end
  end 

  def destroy 
  	Task.destroy params[:id]
  	redirect_to :back, :notice => "Task has been deleted"
  end 
end
