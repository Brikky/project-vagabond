class City < ApplicationRecord
  has_many :posts
  validates :name, :state, :country, presence: true
  validates :name, uniqueness: { scope: [:state, :country] }

  extend FriendlyId
  friendly_id :name, use: :slugged

end
