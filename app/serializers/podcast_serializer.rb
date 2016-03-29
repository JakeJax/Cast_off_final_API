class PodcastSerializer < ActiveModel::Serializer
  root false
  
  attributes :id, :playlist_id, :title, :like_count, :url

  def like_count
    like_num = object.likes.size
    if like_num == 1
      "#{like_num} like"
    else
      "#{like_num} likes"
    end
  end

end
