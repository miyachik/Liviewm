# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    tag = Tag.find_by(name: params[:id])
    @articles = Article.where(id: tag.article_tags.pluck(:article_id)).to_json
  end
end
