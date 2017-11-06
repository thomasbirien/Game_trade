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
    @game = current_user.games.new(game_params)

    if @game.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to profiles_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:game_name, :plateforme, :picture, :condition, :comment, :owner_id)
  end
end
