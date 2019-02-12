class AddLatLong < ActiveRecord::Migration[5.2]
  def change
    add_column :sightings, :lat, :float
    add_column :sightings, :lng, :float
  end
end
