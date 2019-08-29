# frozen_string_literal: true

class Article < ApplicationRecord
	has_many :article_tag
end
