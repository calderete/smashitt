require 'test_helper'
require 'pry'

class CommentsControllerTest < ActionController::TestCase
	
	test "Create comment" do
		assert_difference("Comment.count") do
			post :create, { id: posts(:one).id, content: "hello"}
		end
	end


end