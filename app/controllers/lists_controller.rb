class ListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project
  before_action :set_list, only: [:show, :edit, :update, :destroy, :sort]
  before_action :authorize_project

  def create
    @list = @project.lists.build(list_params)

    respond_to do |format|
      if @list.save
        format.turbo_stream { render turbo_stream: turbo_stream.append("lists", partial: "lists/list", locals: { list: @list }) }
        format.html { redirect_to @project }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("new_list_form", partial: "lists/form", locals: { project: @project, list: @list }) }
        format.html { redirect_to @project, alert: @list.errors.full_messages.join(", ") }
      end
    end
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@list, partial: "lists/list", locals: { list: @list }) }
        format.html { redirect_to @project }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("edit_list_#{@list.id}", partial: "lists/edit_form", locals: { list: @list }) }
        format.html { redirect_to @project }
      end
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@list) }
      format.html { redirect_to @project }
    end
  end

  def sort
    @list.insert_at(params[:position].to_i)
    head :ok
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_list
    @list = @project.lists.find(params[:id])
  end

  def authorize_project
    redirect_to projects_path, alert: "Not authorized" unless @project.member?(current_user)
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
