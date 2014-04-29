class CreateNationalParks < ActiveRecord::Migration
  def change
    create_table :national_parks do |t|
    	t.string  :image1
    	t.string  :image2
    	t.string  :name
    	t.string  :description
    end
  end
end
