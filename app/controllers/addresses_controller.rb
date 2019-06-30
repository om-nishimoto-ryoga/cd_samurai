class AddressesController < ApplicationController
  def new
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    @address.save
    redirect_to user_path(current_user.id)
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to user_path(current_user.id)
  end

  private
  def address_params
    params.require(:address).permit(:user_id,:tel_number,
      :postal_code,:address,:to_name,:to_name_kana)

  end
end
