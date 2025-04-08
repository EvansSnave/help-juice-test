class MainController < ApplicationController 
  def index
    if (!User.any? && !Search.any?)
      Rails.application.load_seed
    end

    @user = User.create_or_find_by(ip_address: request.remote_ip)
    @searches = @user.searches.all

    if params[:query].present?
      @articles = Article.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @articles = Article.all
    end

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
