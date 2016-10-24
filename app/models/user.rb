class User < ApplicationRecord
  has_secure_password
  has_many :posts

  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.profile_photo ||= 'https://s11.postimg.org/pja7dqo3n/vagabunny.png'
  end
end
