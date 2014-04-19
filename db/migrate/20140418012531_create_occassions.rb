class CreateOccassions < ActiveRecord::Migration
  def change
    create_table :occassions do |t|
    	t.string :image1
    	t.string :image2
    	t.string :category
    	t.string :sub_category
    	t.string :name
    	t.string :description
    	t.integer :page
    end
  end
end
