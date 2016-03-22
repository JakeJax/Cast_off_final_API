class Playlist < ActiveRecord::Base
  belongs_to :mood
  has_many :podcasts

  validates :title, presence: true, length: {maximum: 200}

  # def pod_count
  #   pod_num = self.podcasts.size
  #   if pod_num == 1
  #     "#{pod_num} podcast"
  #   else
  #     "#{pod_num} podcasts"
  #   end
  # end

  def pod_count
    self.podcasts.size
  end

  def liked_by?(user)
    self.podcasts.each do |podcast|
      podcast.likes.each do |like|
        return true if like.user_id == user.id
      end
    end
  end
end