class ProfilesController < ApplicationController

  def show
    @games = current_user.games
    @offers = current_user.offers
  end
end
