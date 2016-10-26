class City < ApplicationRecord
  has_many :posts
  validates :name, :state, :country, presence: true
  validates :name, uniqueness: { scope: [:state, :country] }

  # extend FriendlyId
  # friendly_id :name, use: :slugged

  def name_state
    "#{self.name}, #{self.state}"
  end

end
