require 'test_helper'
require 'pry'

class PostsControllerTest < ActionController::TestCase
	#This method worked for testing before using devise gem
	#Use test helper methods with devis to get login working
	#def login 
	#	binding.pry
	#	session[:user_id] = users(:user_one).id
	#end
	
	test "Show post" do
		get :show, { id: posts(:one).id}
		assert_response 302	

	end

	test "new posts" do
		#login
		sign_in users(:user_one)
		get :new
		assert_response 200
	end

	test "Create post" do
		#login
		sign_in users(:user_one)
		assert_difference ("Post.count") do
			post :create, {title: "New post", url: "http://google.com"}
		end
	end

	test "Destroy post" do
		#login
		sign_in users(:user_one)
		assert_difference ("Post.count"), -1 do 
			post :destroy, {id: posts(:one).id}
		end
	end




end