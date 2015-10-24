class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  # POST /users
   def create
     @user = User.new(user_params)

     if @user.save
     else
       render :new
     end
   end

  # DELETE /users/1
  def destroy
    User.find(params[:id]).destroy
  end

  def user_params
      params.require(:user).permit(:id, :full_name, :email, :password, :token, :display_name)
  end
end
