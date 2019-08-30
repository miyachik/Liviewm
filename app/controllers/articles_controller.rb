# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all.to_json
  end

  def show
    @article = Article.find(params[:id]).to_json
  end
end
