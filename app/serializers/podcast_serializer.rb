class PodcastSerializer < ActiveModel::Serializer
  root false
  
  attributes :id, :title, :like_count

  def like_count
    like_num = object.likes.size
    if like_num == 1
      "#{like_num} like"
    else
      "#{like_num} likes"
    end
  end

  # def duration
  #   if object.length <= 2
  #     'short'
  #   else
  #     'long'
  #   end
  # end

end
