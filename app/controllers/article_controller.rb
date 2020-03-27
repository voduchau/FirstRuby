class ArticleController < ApplicationController
  def index
    @article=Article.all
  end
  def new
    
  end
  def show
    @article=Article.find(params[:id])
  end
  def edit
    @article=Article.find(params[:id])
  end

  def create
    @article = Article.create(article_params)
    @article.save

    # dòng này
    # redirect_to @article
    # với dòng này
    redirect_to article_index_path
  end
  def update
    @article=Article.update(article_params)
    redirect_to article_index_path
  end
  def destroy
   @article = Article.find(params[:id])
   @article.destroy
    redirect_to article_index_path
  end

  private 
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
