class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:sucess] = "Article has been created"
    else
      flash[:danger] = "Article has not been created"
      render :new
    end
    redirect_to articles_path
  end
  
  private
    def article_params
    #need top-lvl key, so article
      params.require(:article).permit(:title, :body)
    end

end