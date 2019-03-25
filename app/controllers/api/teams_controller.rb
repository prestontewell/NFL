class Api::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render 'index.json.jbuilder'
  end

  def create
    @team = Team.new(
        club: params[:club],
        city: params[:city],
        stadium: params[:stadium],
        capacity: params[:capacity],
        founded: params[:founded]
    )
    @team.save
    render 'show.json.jbuilder'
  end

  def show
    @team = Team.find(params[:id])
    render 'show.json.jbuilder'
  end

end
