class CommentsController < ApplicationController
  
   
  def create
    @post = Post.find(params[:id])
    @post.comments.create!(content: params[:comment])
    binding.pry
    redirect_to post_show_path(@post)
  end

end


