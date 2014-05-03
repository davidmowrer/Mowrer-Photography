class MainController <  ApplicationController

	def root
	   render :index and return
	end

	def pic_category
		render :pic_category and return
	end

	def about
		render :about and return
	end

	def contact
		render :contact and return
	end

	def comment_blog
		render :comment_blog and return
	end

	def lg_view_image
		@lg_photo = Picture.find(params[:id])
		render :lg_view_image and return
	end

	def alaska 
		@title = "ALASKA"
		@category = "alaska"
		@pictures = Picture.where(category: "alaska").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def albq_balloon
		@title = "ALBUQUERQUE BALLOON FIESTA"
		@category = "albq_balloon"
		@pictures = Picture.where(category: "albq_balloon").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def colorado 
		@title = "COLORADO"
		@category = "colorado"
		@pictures = Picture.where(category: "colorado").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def fall_colors
		@title = "FALL COLORS"
		@category = "fall_colors"
		@pictures = Picture.where(category: "fall_colors").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def jax_air_show
		@title = "JACKSONVILLE FL AIR SHOW at JAX"
		@category = "jax_air_show"
		@pictures = Picture.where(category: "jax_air_show").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def swooping
		@title = "NATIONAL SWOOPING EVENT"
		@category = "swooping"
		@pictures = Picture.where(category: "swooping").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def wild_flowers
		@title = "WILD FLOWERS"
		@category = "wild_flowers"
		@pictures = Picture.where(category: "wild_flowers").page(params[:page]).per_page(8)
		render :pictures and return
	end

	def test_pictures
		@title = "TEST PICTURES"
		render :test_pictures and return
	end

	def select_national_parks 
		render :select_national_parks and return
	end

	def arches_np 
		@name = "arches"
		@national_parks = NationalPark.where(name: "arches").page(params[:page]).per_page(8)
		render :national_park_pictures and return
	end

	def bryce_canyon_np
		@name = "bryce_canyon"
		@national_parks = NationalPark.where(name: "bryce_canyon").page(params[:page]).per_page(8)
		render :national_park_pictures and return
	end

	def everglades_np 
		@name = "everglades"
		@national_parks = NationalPark.where(name: "everglades").page(params[:page]).per_page(8)
		render :national_park_pictures and return
	end

	def grand_canyon_np
		@name = "grand_canyon" 
		@national_parks = NationalPark.where(name: "grand_canyon").page(params[:page]).per_page(8)
		render :national_park_pictures and return
	end

	def rocky_mtn_np
		@name = "rocky_mountain" 
		@national_parks = NationalPark.where(name: "rocky_mountain").page(params[:page]).per_page(8)
		render :national_park_pictures and return
	end

	def index
	  	render :index
	 end

	def special_occasions
	  id = session[:title_id]
	  @desc = Title.find_by(id: id).description
	  @name = Title.find_by(id: id).name
      @occasions = Occasion.where(category: @name).page(params[:page]).per_page(8)
      render :special_occasions and return
	end

	def admin
	  	render :admin and return
	 end

	def so_login
		viewer = Viewer.new
		@error = nil
	 	render :so_login and return
	end

	def so_login_post
		id = params[:id]
		viewer = Viewer.new
	   	viewer.first_name = params["first_name"]
		viewer.last_name  = params["last_name"]
	 	viewer.event_code = params["event_code"]

	 	ev_code = viewer.event_code
	
	    ec = EventCode.find_by(event_code: ev_code).event_code

	  	# "if there is not a match you get an error unidentified method for nil:Nil class"
	 	if params["commit"] == "Enter"

	  		if viewer.event_code == "admin"
	  			redirect_to "/admin_login" and return
	  		else
	  			viewer.save		
			end
		else
			@error = "Not a valid entry"
		  	render :so_login and return	
		end

		if ev_code = ec
			if viewer.save == true
	 			occ_id = Title.find_by(name: ev_code).id
	 			session[:title_id] = occ_id
				redirect_to "/special_occasions" and return
 			else
		 		@error = "Wrong Event Code"
		  		render :so_login and return
		    end
		else
			@error = "Wrong Event Code"
			render :so_login and return
		end
	end

	def admin_login
		@error = nil
	 	render :admin_login and return
	end

	def admin_login_post
		un    = params["user_name"]
		pw    = params["password"]
		admin = Admin.find_by(user_name: un)

		if admin == nil	
			@error = "Invalid username"
			render :admin and return
			
		elsif admin.password  != pw
			@error = "Invalid password"
			render :admin and return
		else
			redirect_to "/admin" and return
		end
			 
	end

end
