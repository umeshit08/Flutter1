# the pages controller all of the [ages]
class PagesController < ApplicationController

	#back-end of the pages/index codes
  def index
    @posts =Post.all
  end

#back-end of the pages/home codes
  def home
  @posts =Post.all
  @newPost = Post.new
  end

#back-end of the pages/profile codes
  def profile
  	#grabs  the username  from the file url is as :id
if(User.find_by_username(params[:id]))
  	@username = params[:id]
  else
  	redirect_to root_path, :notice=>"User not Found!"
  end
@posts =Post.all#.where("user_id =?",User.find_by_username(params[:id]).id)
@newPost = Post.new
@toFollow= User.all.last(5)
end
#back-end of the pages/explore codes
  def explore
    @posts =Post.all
  @newPost = Post.new
  @toFollow= User.all.last(5)
  end
end
