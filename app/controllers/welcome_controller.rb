class WelcomeController < ApplicationController
  def index
    @articles = Article.order('created_at DESC') #.first(5)
  end
end
