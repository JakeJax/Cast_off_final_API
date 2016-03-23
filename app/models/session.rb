class Click < ActiveRecord::Base
  belongs_to :user

  validates :token, presence: true,
                    uniqueness: true

  before_validation :generate_token

  def self.authenticate(token)
    if session = find_by(token: token)
      session.user
    else
      nil
    end
  end

  private

  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
  
end