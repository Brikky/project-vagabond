class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 1..200 }
  validates :text_body, presence: true, length: { minimum: 140 }


end
