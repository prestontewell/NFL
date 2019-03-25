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

  def update
    @team = Team.find(params[:id])
    @team.club = params[:club] || @team.club
    @team.city = params[:city] || @team.city
    @team.stadium = params[:stadium] || @team.stadium
    @team.capacity = params[:capacity] || @team.capacity
    @team.founded = params[:founded] || @team.founded
    @team.save
    render 'show.json.jbuilder'
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    render 'destroy.json.jbuilder'
  end

end
