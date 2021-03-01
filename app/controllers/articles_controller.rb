class ArticlesController < ApplicationController
  def index
    @articles = policy_scope(Article)
    @disable_triangle_background = true
    @enable_squared_background = true
    if params[:category].present?
      @articles = policy_scope(Article).where(category: params[:category])
    else
      @articles = policy_scope(Article)
    end
  end

  def show
    @article = Article.find(params[:id])
    authorize @article
  end
end
