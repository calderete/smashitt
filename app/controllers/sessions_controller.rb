class SessionsController < ApplicationController

	def new
		render :new_user
	end

	def create
		user = User.find_by(name: params[:name], email: params[:email])
	end
		
	def destroy
		session[:user_id] = nil
		redirect_to post_path
	end
end