class PlaylistSerializer < ActiveModel::Serializer
  root false
  
  attributes :id, :mood_id, :title, :image, :description, :link

 end