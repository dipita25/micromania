class GamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :get_game, only: [:show, :edit, :update, :destroy]


  def index
    @games = policy_scope(Game)
  end

  def show
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
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
    authorize @game
  end

end
