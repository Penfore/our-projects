class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project
  before_action :set_list
  before_action :set_card, only: [ :show, :edit, :update, :destroy, :sort ]
  before_action :authorize_project

  def show
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append("modal-container", partial: "cards/show_modal", locals: { card: @card }) }
      format.html { redirect_to @project }
    end
  end

  def new
    @card = @list.cards.build
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append("modal-container", partial: "cards/new_modal", locals: { card: @card, list: @list }) }
      format.html { redirect_to @project }
    end
  end

  def create
    @card = @list.cards.build(card_params)
    @card.assignee = current_user

    respond_to do |format|
      if @card.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.append("cards_#{@list.id}", partial: "cards/card", locals: { card: @card }) +
                               turbo_stream.remove("card_modal")
        end
        format.html { redirect_to @project, notice: "Card criado com sucesso!" }
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("card_modal", partial: "cards/new_modal", locals: { card: @card, list: @list })
        end
        format.html { redirect_to @project, alert: @card.errors.full_messages.join(", ") }
      end
    end
  end

  def edit
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append("modal-container", partial: "cards/edit_modal", locals: { card: @card }) }
      format.html { redirect_to @project }
    end
  end

  def update
    respond_to do |format|
      if @card.update(card_params)
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace(@card, partial: "cards/card", locals: { card: @card }) +
                               turbo_stream.remove("card_modal")
        end
        format.html { redirect_to @project, notice: "Card atualizado com sucesso!" }
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("card_modal", partial: "cards/edit_modal", locals: { card: @card })
        end
        format.html { redirect_to @project, alert: @card.errors.full_messages.join(", ") }
      end
    end
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.remove(@card) +
                             turbo_stream.remove("card_modal")
      end
      format.html { redirect_to @project, notice: "Card removido com sucesso!" }
    end
  end

  def sort
    @card.insert_at(params[:position].to_i)
    head :ok
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_list
    @list = @project.lists.find(params[:list_id])
  end

  def set_card
    @card = @list.cards.find(params[:id])
  end

  def authorize_project
    redirect_to projects_path, alert: "You are not authorized to access this project." unless @project.member?(current_user)
  end

  def card_params
    params.require(:card).permit(:title, :description, :due_date, :assignee_id)
  end
end
