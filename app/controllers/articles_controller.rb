class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end

	def update 
		@article = Article.find(params[:id])

 		@article.update_attributes(article_params)

		@article.save
		redirect_to @article
	end


	private

	def article_params
		params.require(:article).permit(:title, :text)
	end
end
