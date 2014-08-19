class ArticlesController < ApplicationController
def new

end
def create
@article = Article.new(article_params)
@article.save
redirect_to @article
end
private
def article_params
params.require(:articles).permit(:title, :text)
end
def show
@article = Article.find(params[:id])
end
def index
@article = Article.all
end
end

