class GamesController < ApplicationController

  before_action :get_game, only: [:show, :edit, :update, :destroy]


  #skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to game_path(@game)
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:name, :price, :platform, :photo)
  end

  def get_game
    @game = Game.find(params[:id])
  end
end
