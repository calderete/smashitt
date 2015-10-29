class Comment < ActiveRecord::Base
	belongs_to :post
	belong_to :user
end
