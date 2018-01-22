# frozen_string_literal: true

class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles
  end
end
