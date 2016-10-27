class City < ApplicationRecord
  has_many :posts
  validates :name, :state, :country, presence: true
  validates :name, uniqueness: { scope: [:state, :country] }

  def name_state
    "#{self.name}, #{self.state}"
  end

end
