class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authorize_project, only: [:show, :edit, :update, :destroy]

  def index
    @owned_projects = current_user.owned_projects.includes(:members)
    @member_projects = current_user.projects.includes(:owner, :members)
  end

  def show
    @lists = @project.lists.includes(cards: :assignee)
    @new_list = @project.lists.build
    @new_card = Card.new
  end

  def new
    @project = current_user.owned_projects.build
  end

  def create
    @project = current_user.owned_projects.build(project_params)

    if @project.save
      redirect_to @project, notice: "Project was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project was successfully destroyed."
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def authorize_project
    redirect_to projects_path, alert: "You are not authorized to access this project." unless @project.member?(current_user)
  end

  def project_params
    params.required(:project).permit(:name, :description)
  end
end
