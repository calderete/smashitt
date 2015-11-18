
#This is what the old Sessions controller looked liked





class SessionsController < ApplicationController

	def new
		render :new_user
	end

	def create
		#binding.pry
		user = User.find_by(name: params[:name])
		if user.password == params[:password]
			session[:user_id] = user.id
			redirect_to posts_show_path
		else
			redirect_to login_path
		end

	end
		
	def destroy
		session[:user_id] = nil
		redirect_to posts_show_path
	end
end