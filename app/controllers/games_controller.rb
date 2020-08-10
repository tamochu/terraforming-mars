class GamesController < ApplicationController
  before_action :logged_in_user
  
  def index
  end

  def create
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
end
