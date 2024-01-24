class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    @game.save
    redirect_to game_path(@game)
  end

  def games_params
    params.require(:game).permit(:name, :price, :platform, :photo)
  end
end
