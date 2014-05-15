class ArticlesController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show]
  before_action :load_categories, only: [:new, :edit]

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

		if @article.save then
			redirect_to @article
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def update 
		@article = Article.find(params[:id])

 		@article.update_attributes(article_params)

		@article.save!
		redirect_to @article
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
  
  def load_categories
    @categories = Category.all
  end

	def article_params
    
		params.require(:article).permit(:title, :text, category_ids: [])
	end
end
