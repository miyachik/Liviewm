# frozen_string_literal: true

class ArticleTag < ApplicationRecord
	has_one :article
	has_one :tag
end
