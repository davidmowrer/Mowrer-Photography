class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :user_name
    	t.string :password
    end
  end
end
