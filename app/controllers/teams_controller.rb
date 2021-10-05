class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    team = Team.where(id: team_params[:id])
            .select(:id, :name, :rating)
    BuyTimeWorker.perform_async(team.first.name, team.first.rating)
    render json: { data: team }
  end

  private
  def team_params
    params.permit(:id)
  end
end