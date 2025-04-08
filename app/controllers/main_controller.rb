class MainController < ApplicationController
  def index
    if (!User.any? && !Search.any?)
      Rails.application.load_seed
    end

    @user = User.find_or_create_by(ip_address: request.remote_ip)
    @searches = @user.searches.all
  end

  def articles
    @articles = Article.search_by_title(params[:search_by_title])
    render json: @articles
  end
end
