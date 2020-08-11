class GamesController < ApplicationController
  before_action :logged_in_user
  
  def index
    @games = Game.all
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @player = participate(@game)
      logger.debug(@player.inspect)
      if @player.save
        redirect_to @game
      end
    else
      render 'index'
    end
  end

  def show
  end

  def destroy
  end
  
  private
    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "ログインしてください。"
        redirect_to root_path 
      end
    end
    
    def game_params
      params.require(:game).permit(:name)
    end
    
    def participate(game)
      @initialCompany = Company.initialCompany
      logger.debug(@initialCompany.inspect)
      current_user.player.build(
        seat: -1,
        game: game,
        company: @initialCompany
      )
    end
end
