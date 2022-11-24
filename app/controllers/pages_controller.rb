class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if params[:query].present?
      sql_query = "name ILIKE :query OR service_type ILIKE :query OR description ILIKE :query"
      @articles = Article.where(sql_query, query: "%#{params[:query]}%")
    else
      @articles = Article.all
    end
  end
end
