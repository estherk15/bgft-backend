class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :comments, :sightings

  def sightings
    self.object.sightings.map do |sighting|
      {
        id: sighting.id,
        location: sighting.location,
        description: sighting.description,
        photo: sighting.photo,
        comments: sighting.comments,
        lng: sighting.lng, 
        lat: sighting.lat
      }
    end
  end


end
