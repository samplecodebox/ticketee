class ProjectsController < ApplicationController

  before_filter :find_project, :only => [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
       flash[:notice] = "Project has been created."
       redirect_to @project
    else
      flash[:alert] = "Project has not been created."
      render :action => "new"
    end
    
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update

    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project is updated successfully"
      redirect_to @project
    else
       flash[:alert] = "Project cannot be updated"
       render :action => "edit"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project has been deleted."
    redirect_to projects_path
  end
  
  def show
    @project = Project.find(params[:id])
  end

  private

  def find_project
    @project = Project.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Project you are looking for is not found!"
    redirect_to projects_path
  end
end
