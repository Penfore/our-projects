class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [ :show, :edit, :update, :destroy ]
  before_action :authorize_project, only: [ :show, :edit, :update, :destroy ]

  def index
    @owned_projects = current_user.owned_projects.includes(:lists, :cards, :members)
    @member_projects = current_user.projects.includes(:owner, :lists, :cards, :members)
  end

  def show
    @lists = @project.lists.includes(cards: :assignee).order(:position)
    @new_list = @project.lists.build
  end

  def new
    @project = current_user.owned_projects.build
  end

  def create
    @project = current_user.owned_projects.build(project_params)

    if @project.save
      create_default_lists
      redirect_to @project, notice: "Projeto criado com sucesso!"
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
    unless @project.member?(current_user)
      redirect_to projects_path, alert: "Você não tem permissão para acessar este projeto."
    end
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end

  def create_default_lists
    default_lists = [
      { title: "To Do", position: 1 },
      { title: "In Progress", position: 2 },
      { title: "Done", position: 3 }
    ]

    default_lists.each do |list_attrs|
      @project.lists.create!(list_attrs)
    end
  end
end
