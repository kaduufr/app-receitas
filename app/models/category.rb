class Category < ApplicationRecord
  include FriendlyId
  has_many :recipes
  friendly_id :name, use: :slugged
end
