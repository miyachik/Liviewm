# frozen_string_literal: true

class Tag < ApplicationRecord
  include FriendlyId
  friendly_id :name
  has_many :article_tags
end
