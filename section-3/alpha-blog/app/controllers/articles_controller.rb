class ArticlesController < ApplicationController
  def show
    # binding.break - debug
    @article = Article.find(params[:id])
  end
end