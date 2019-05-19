class MainController < ApplicationController
  def index
     @user = User.last

     # p @user.user_name == ""
     #
     # if @user.user_name == ""
     #   render :edit
     # else
     #   redirect_to root_path
     # end

  end

  def unauthenticated

  end

  # def sign_up_validation
  #   @user = User.find_by(email: params["email"])
  #
  #   if @user.update(user_params)
  #     redirect_to root_path
  #   else
  #     render :edit
  #   end
  #
  # end

  private
  def user_params

    params.require(:user).permit(:user_name, :name, :last_name, :phone, :profession, :image_url)

  end

end
