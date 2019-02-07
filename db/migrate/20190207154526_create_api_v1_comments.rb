class CreateApiV1Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_comments do |t|

      t.timestamps
    end
  end
end
