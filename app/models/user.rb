class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "is not an email") unless
      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end

class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  validates :email, uniqueness: true, email: true, presence: true
  validates :password, length: { minimum: 6 }

  def self.confirm(params)
    @user = User.find_by(email: params[:email])
    @user ? @user.authenticate(params[:password]) : false
  end

  def is?(other_user)
    self == other_user
  end

end
