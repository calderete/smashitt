require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_user_name
  	user = User.create(user_name: "Charlie", password: "12aswqh",
  					name: "Charlie")
  	assert user.name == "Charlie"

  end

  test "user has posts" do
  	user = users(:user_one)
  	assert user.posts.count != 0
  end
end
