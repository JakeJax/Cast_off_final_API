class Podcast < ActiveRecord::Base
  belongs_to :playlist
  has_many :likes
  has_many :clicks

  validates :title, presence: true, length: {maximum: 200}
  validates :url, presence: true, length: {maximum: 2000}

  
end