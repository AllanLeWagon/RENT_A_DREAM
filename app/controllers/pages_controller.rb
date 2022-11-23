class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.all
  end
end
