class SightingSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :photo, :user_id

  def comments
    self.object.comments.map do |comment|
      {
        body: comment.body,
        photo: comment.photo,
        user: comment.user
      }
    end
  end
end
