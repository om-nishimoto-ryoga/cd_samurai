class Admins::UsersController < Admins::ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    @addresses = Address.where(user_id: user.id)
=======
    @addresses = Address.where(user_id: current_user.id)
>>>>>>> 539b406a38defd9fe7b6ecdd2ceb92cee3fb9f3c
  end

  def edit
  end

  def update
  	
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
    params.requie(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :birthday, :gender)
  end

end
