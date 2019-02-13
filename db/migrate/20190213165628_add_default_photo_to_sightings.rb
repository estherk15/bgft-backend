class AddDefaultPhotoToSightings < ActiveRecord::Migration[5.2]
  def change
    change_column :sightings, :photo, :string, default: 'https://www.geek.com/wp-content/uploads/2016/03/featured-8-625x352.jpg'
  end
end
