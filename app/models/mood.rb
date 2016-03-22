class Mood < ActiveRecord::Base
  belongs_to :user
  has_many :playlists

  validates :title, presence: true, length: {maximum: 40}

  def playlist_count
    playlist_num = self.playlist.size
    if playlist_num == 1
      "#{playlist_num} playlist"
    else
      "#{playlist_num} playlists"
    end
  end
end