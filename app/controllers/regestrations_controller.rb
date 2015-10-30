class RegestrationsController < ApplicationController

	def new
		@user = User.new
		render :new_user
	end

	def create
		#binding.pry
		@user = User.new(name: params[:name],  
		                password: params[:password])
		if @user.save
			redirect_to posts_show_path
		else
			render :smash_no_like
		end
	end
end







