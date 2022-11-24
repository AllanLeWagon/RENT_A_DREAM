class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.owner = current_user
    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:name, :price, :description, :image, :service_type)
  end
  
end
