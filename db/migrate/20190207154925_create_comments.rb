class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :photo
      t.integer :user_id
      t.integer :sighting_id

      t.timestamps
    end
  end
end
