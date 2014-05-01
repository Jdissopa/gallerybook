class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture
      t.text :description
      t.integer :gallery_id

      t.timestamps
    end
  end
end
