class ProjectsController < ApplicationController
  def index
    @projects = current_user.department.projects
    # @project = Project.joins(:department).where(user: current_user)
  end

  def show
    @project = current_user.department.projects.first

    # @project = Project.find(params[:id])
  end
end
