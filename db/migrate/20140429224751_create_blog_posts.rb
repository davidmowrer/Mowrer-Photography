class CreateBlogPosts < ActiveRecord::Migration
  def change
  	create_table :blog_posts do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :location
      t.string   :body
      t.timestamps :updated_at
    end
  end
end
