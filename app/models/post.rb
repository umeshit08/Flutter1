class Post < ActiveRecord::Base
belongs_to :user    
validates :user_id, presence:true
validates :content, presence:true, length:{maximum:150}  #post for the 150 chars in updates
default_scope ->{order(created_at: :desc)} #new post

has_many :posts, dependent: :destroy  #remove user account posts delete
has_many :active_relationships, class_name:"Relationship",
foreign_key:"follower_id",
dependent: :destroy
end
