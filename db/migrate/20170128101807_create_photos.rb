class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :caption
      t.string :image
      t.string :location

      t.timestamps

    end
  end
end
