class Podcast < ActiveRecord::Base
  belongs_to :playlist
  has_many :likes
  has_many :clicks

  validates :title, presence: true, length: {maximum: 200}
  validates :url, presence: true, length: {maximum: 2000}

  # def like_count
  #   like_num = self.likes.size
  #   if like_num == 1
  #     "#{like_num} like"
  #   else
  #     "#{like_num} likes"
  #   end
  # end
end