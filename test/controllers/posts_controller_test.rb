require 'test_helper'
require 'pry'

class PostsControllerTest < ActionController::TestCase
	def login 
		session[:user_id] = users(:user_one).id
	end
	
	test "Show post" do
		get :show, { id: posts(:one).id}
		assert_response 200	

	end

	test "new posts" do
		login
		get :new
		assert_response 200
	end

	test "Create post" do
		login
		
		assert_difference ("Post.count") do
			post :create, {title: "New post", url: "http://google.com"}
		end
	end

	test "Destroy post" do
		login
		assert_difference ("Post.count"), -1 do 
			post :destroy, {id: posts(:one).id}
		end
	end




end