class HomesController < ApplicationController
  def index
    @articles = Article.all.to_json
  end
end
