class ArticlesController < ApplicationController
  def index
    @articles = Article.where(is_deleted: false)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article_history = @article.article_histories.create(
      title: @article.title,
      body: @article.body,
      author: @article.author,
    )
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.is_deleted = true
    @article.deleted_at = Time.now
    @article.save

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :author, :body)
    end
end
