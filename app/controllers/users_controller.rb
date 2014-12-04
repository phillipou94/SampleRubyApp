class UsersController < ApplicationController

  def show
     @user= User.find(params[:id]) #params is users/id
     #debugger
  end

  def new #recall new action is routed to /signup
     @user = User.new
  end

  def create
     @user = User.new(user_params)   #params is a hash of hashes
     #create new user with user in that hash
     # same as @user = User.new(name: "Foo Bar", email: "foo@invalid",\
     # password: "foo", password_confirmation: "bar")

     if(@user.save) #recall user.save returns true if successful
        #handle successful user creation
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user #automatically knows redirect_to user_url(@user)

     else
        render "new"
     end
  end

  private
     def user_params
        params.require(:user).permit(:name, :email, :password,:password_confirmation)
     end

end
