class Category < ApplicationRecord
  include FriendlyId
  has_many :recipes
  friendly_id :name, use: :slugged

  has_one_attached :image
end
