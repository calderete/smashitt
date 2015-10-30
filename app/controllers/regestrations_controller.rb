class RegestrationsController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		@user = User.new(name: params[:name], 
		                email: params[:email], 
		                password: params[:password])
		if @user.save
			redirect_to post_show
		else
			render :smash_no_like
		end
	end
end







