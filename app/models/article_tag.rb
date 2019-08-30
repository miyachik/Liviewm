# frozen_string_literal: true

class ArticleTag < ApplicationRecord
  has_one :article, dependent: :nullify
  has_one :tag, dependent: :nullify
end
