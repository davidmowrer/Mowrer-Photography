class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :image1
    	t.string :image2
    	t.string :category
    	t.string :description
    end
  end
end
