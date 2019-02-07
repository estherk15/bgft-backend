class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :comments, :sightings

  def sightings
    self.object.sightings.map do |sighting|
      {
        id: sighting.id,
        location: sighting.location,
        description: sighting.description,
        photo: sighting.photo,
        comments: sighting.comments
      }
    end
  end

  def comments
    self.object.comments.map do |comment|
      {
        body: comment.body,
        photo: comment.photo,
        sightings: comment.sightings
      }
    end
  end
end
