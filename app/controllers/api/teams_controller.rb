class Api::TeamsController < ApplicationController

  def index
    @teams = Team.all
    render 'index.json.jbuilder'
  end

  def create
    @team = Team.new(
        club: "Indianapolis Colts",
        city: "Indianapolis, Indiana",
        stadium: "Lucas Oil Stadium",
        capacity: "67,000",
        founded: "1953"
    )
    @team.save
    render 'show.json.jbuilder'
  end

end
