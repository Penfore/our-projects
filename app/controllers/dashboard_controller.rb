class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = current_user.projects.includes(:lists, :cards)
    @recent_projects = @projects.limit(5)
    @project_stats = calculate_project_stats
  end

  private

  def calculate_project_stats
    {
      total_projects: @projects.count,
      total_cards: current_user.cards.count,
      completed_cards: current_user.cards.joins(:list).where(lists: { title: "Done" }).count,
      active_projects: @projects.joins(:cards).distinct.count
    }
  end
end
