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

	def alaska 
		@title = "ALASKA"
		@category = "alaska"
		# @pictures = Picture.order(:category).page(params[:page]).per_page(12)
		render :pictures and return
	end

	def albq_balloon
		@title = "ALBUQUERQUE BALLOON FIESTA"
		@category = "albq_balloon"
		@pictures = Picture.order(:id).page(params[:page]).per_page(4)
		render :pictures and return
	end

	def colorado 
		@title = "COLORADO"
		@category = "colorado"
		@pictures = Picture.order(:id).page(params[:page]).per_page(4)
		render :pictures and return
	end

	def fall_colors
		@title = "FALL COLORS"
		@category = "fall_colors"
		@pictures = Picture.order(:id).page(params[:page]).per_page(4)
		render :pictures and return
	end

	def test_pictures
		@title = "TEST PICTURES"
		@pictures = Picture.order(:id).page(params[:page]).per_page(4)
		render :pictures and return
	end

	def wild_flowers
		@title = "WILD FLOWERS"
		@category = "wild_flowers"
		@pictures = Picture.order(:id).page(params[:page]).per_page(3)
		render :pictures and return
	end

	def rocky_mtn_np
		@name = "rocky_mountain" 
		render :national_park_pictures and return
	end

	def arches_np 
		@name = "arches"
		render :national_park_pictures and return
	end

	def bryce_canyon_np
		@name = "bryce_canyon"
		render :national_park_pictures and return
	end

	def index
	  	render :index
	 end

	def special_occassions
	  	render :special_occassions and return
	end

	def admin_login
		@error = nil
	 	render :admin_login and return
	end

	def admin
	  	render :admin and return
	 end

	def so_login
		@viewer = Viewer.new
		@error = nil
	 	render :so_login and return
	end


	def so_login_post
		id = params[:id]
		@viewer = Viewer.new
	   	@viewer.first_name = params["first_name"]
		@viewer.last_name  = params["last_name"]
	 	@viewer.event_code = params["event_code"]

	 	@ev_code = @viewer.event_code

	    @ec = EventCode.find_by(event_code: @ev_code).event_code

	  	# "if there is not a match you get an error unidentified method for nil:Nil class"
	 	if params["commit"] == "Continue"
	  		if @viewer.event_code == "admin"
	  			redirect_to "/admin_login" and return
	  		else
	  			@viewer.save		
			end
		elsif params["commit"] == "Back"
			redirect_to "/pic_category" and return
		end

		if ev_code = @ec
	 		if @viewer.save == true
	 			@occassions = Occassion.order(:id).page(params[:page]).per_page(12)
	 			render :special_occassions and return
	 		else
		 		@error = "Wrong Event Code"
		  		render :so_login and return
		    end
		else
			@error = "Wrong Event Code"
			render :so_login and return
		end
	end


	def admin_login_post
		un    = params["user_name"]
		pw    = params["password"]
		admin = Admin.find_by(user_name: un)

		if admin == nil	
			@error = "Invalid username"
			render :admin_login and return
			
		elsif admin.password  != pw
			@error = "Invalid password"
			render :admin_login and return
		else
			redirect_to "admin" and return
		end
			 
	end

end
