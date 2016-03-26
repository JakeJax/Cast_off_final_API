class Session < ActiveRecord::Base
  belongs_to :user

  validates :authentication_token, presence: true,
                    uniqueness: true

  before_validation :generate_token

  def self.authenticate(token)
    if session = find_by(authentication_token: token)
      session.user
    else
      nil
    end
  end

  private

  def generate_token
    self.authentication_token = SecureRandom.urlsafe_base64
  end

end