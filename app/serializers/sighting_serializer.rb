class SightingSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :photo, :user_id, :comments, :lat, :lng

  def comments
    self.object.comments.map do |comment|
      {
        id: comment.id,
        body: comment.body,
        photo: comment.photo,
        user: comment.user
      }
    end
  end
end
