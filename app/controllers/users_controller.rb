class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
    flash[:notice] = "You cannot edit"
    redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
		@user_id = current_user.id
		if @user.update(user_params)
			flash[:notice] = "You have updated user successfully."
			redirect_to user_path(@user.id)
		else
			flash[:notice] = "error."
			render("users/edit")
		end
  end

  def destroy
  end

  def withdrawal
  end

  def ordered
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :birthday, :gender)
  end

end
