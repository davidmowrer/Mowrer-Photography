class BlogController < ApplicationController
  
  def blog_login
    @error = nil
    @locations = Location.order(:id)
    render :blog_login and return
  end

  def blog_login_post
    id = params[:id]
    blog_post  = BlogPost.new
    blog_post.first_name = params["first_name"]
    blog_post.last_name  = params["last_name"]
    blog_post.location   = params["location"]
    blog_post.body       = params["body"]

    if params["commit"] == "Create"
      blog_post.save!
      redirect_to "/index" and return
    else
      render :blog_login and return
    end
  end

  def blog
    @error = nil
    @blog_view = BlogPost.order(:id).page(params[:page]).per_page(2)
    render :blog and return
  end

end
  