class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # binding.break - debug
    @article = Article.find(params[:id])
  end
end