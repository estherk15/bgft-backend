class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.string :location
      t.text :description
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
