class CommentSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :sighting
end
