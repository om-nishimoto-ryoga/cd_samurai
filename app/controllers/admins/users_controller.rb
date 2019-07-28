class Admins::UsersController < Admins::ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.with_deleted
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
		@user_id = @user.id
		if @user.update(user_params)
			flash[:notice] = "You have updated user successfully."
			redirect_to admins_products_path
		else
			flash[:notice] = "error."
			render("users/edit")
		end
  end
  

  def destroy
   @user = User.find(params[:id])
   @user.destroy
   redirect_to admins_users_path
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
