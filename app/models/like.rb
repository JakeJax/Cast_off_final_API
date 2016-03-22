class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :podcast

  validates_presence_of :user, :podcast
end
