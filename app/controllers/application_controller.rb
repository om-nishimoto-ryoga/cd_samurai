class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?

  protect_from_forgery with: :exception

  helper_method :current_product

  before_action :set_search


# ransack
  def set_search
    @search = Product.ransack(params[:q]) #ransackメソッド推奨
    @search_products = @search.result
  end


protected
 def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender])
 end
end
