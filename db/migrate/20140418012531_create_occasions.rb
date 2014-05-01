class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
    	t.string :image1
    	t.string :image2
    	t.string :category
    	t.string :sub_category
    	t.string :name
    	t.string :description
    end
  end
end
