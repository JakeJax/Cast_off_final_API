class User < ActiveRecord::Base
  has_many :likes
  has_many :clicks
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 30}
  validates :password, presence: true, length: {minimum: 6}
  
  attr_accessor :password_confirmation
  
  #validate :check_password

  def check_password
    if password != password_confirmation
      errors.add(:password, ": Your passwords do not match")
    end
  end
end