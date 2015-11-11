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
end
