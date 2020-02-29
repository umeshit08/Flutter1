class PostsController < ApplicationController
   
   def new
       @post= Post.new
   end
   def create
       @post= Post.new(post_params)
        @post.user_id= current_user.id #assign to post created
    respond_to do |f|
        if(@post.save)
            f.html {redirect_to "",notice: "Post Created"}
        else
            f.html {redirect_to "",notice: "Error:- Post Not Saved"}
        end
    end
end
    
    private
    def post_params # allow ceratian data passed vai form
    params.require(:post).permit(:user_id,:content)
end
end