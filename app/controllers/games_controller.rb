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
      if @player.save
        redirect_to @game
      end
    else
      render 'index'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def destroy
  end
  
  def join
    @game = Game.find(params[:id])
    if @game.player.length >= 5
      flash[:alert] = "5人以上は参加できません。"
    elsif @game.player.any? { |p| p.user.id == current_user.id }
      flash[:alert] = "参加済みです。"
    else
      @player = participate(@game)
      @player.save
    end
    redirect_to @game
  end
  
  def test_game
    ts = Time.now.to_s
    @game = Game.new(name: "test game #{ts}")
    if @game.save
      @dummy_user = User.dummy_user(-1)
      @player = participate(@game, @dummy_user)
      if @player.save
        redirect_to @game
      end
    else
      render 'index'
    end
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
    
    def participate(game, user = current_user)
      @initial_company = Company.initial_company
      user.player.build(
        seat: -1,
        game: game,
        company: @initial_company
      )
    end
end
