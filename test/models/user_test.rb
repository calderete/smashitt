require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_user
  	user = User.new(user_name: "Charlie", password: "12aswqh",
  					name: "Charlie")
  	assert user.valid?

  end
end
