class UsersController < ApplicationController
	def index
	end

	def success
  	@user =User.last
	end

	def new 
  		@user =User.new(name: params[:name], budget: params[:budget])
  			if @user.valid?
  			@user.save
  			else
  				[:name,:budget].each {|field|
  					if @user.errors.has_key? field
		    			@user.errors[field].each { |error|
		      			flash[field] = field.to_s.capitalize + " " + error
		    		}
		  			end
				}
			flash[:fail] = "Sorry, failed to submit form. Please enter the required information."
  			redirect_to '/'
  			return	
  			end
  			redirect_to '/success'
	end
 

end
