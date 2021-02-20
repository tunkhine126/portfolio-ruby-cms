class ProjectsController < ApplicationController
  def index 
    @title    = 'Projects'
    @projects = Project.order('created_at DESC')
  end

  def show
    @project     = Project.find_by(slug: params[:id])
    @title       = @project.title
    @description = @project.description
  end
end
