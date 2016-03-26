class LikeSerializer < ActiveModel::Serializer
  root false
 
  attributes :id, :user_id, :podcast_id

end