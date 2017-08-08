class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change #modifying db
  	#adding column users columns
  	add_column :users, :username, :string 
  	add_index :users, :username,  unique:  true #first index 
  end
end
 