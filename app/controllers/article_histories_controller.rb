class ArticleHistoriesController < ApplicationController
  def index
    @article_histories = ArticleHistory.where(article_id: params[:article_id] ,is_deleted: false).order(created_at: :desc)
  end

  def show
  end

  def destroy
    @article = Article.find(params[:article_id])
    @article_histories = @article.article_histories.find(params[:id])
    @article_histories.is_deleted = true
    @article_histories.deleted_at = Time.now
    @article_histories.save
    redirect_to article_article_histories_path
  end
end
