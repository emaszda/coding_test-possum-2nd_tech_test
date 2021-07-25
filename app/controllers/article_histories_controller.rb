class ArticleHistoriesController < ApplicationController
  def index
    @article_histories = ArticleHistory.where(article_id: params[:article_id])
  end

  def show
  end

  def destroy
  end
end
