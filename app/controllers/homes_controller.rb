# frozen_string_literal: true

class HomesController < ApplicationController
  def index
    @articles = Article.all.to_json
  end
end
