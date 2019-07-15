class Admins::ProductsController < Admins::ApplicationController

	def index
	@products = Product.all
	end

	def show
	@product = Product.find(params[:id])
	end

	def new
	@product = Product.new
	@genres = Genre.all
	end

	def edit
	@product = Product.find(params[:id])
	@genres = Genre.all
	end

	def create
	@product = Product.new(product_params)
	@product.save
	redirect_to admins_products_path
	end


	def update
	@product = Product.find(params[:id])
	@product.update(product_params)
	redirect_to admins_product_path(@product)
	end

	def destroy
	@product = Product.find(params[:id])
	@product.destroy
	redirect_to admins_products_path
	end

	private

	def product_params
	params.require(:product).permit(
	:genre_id,
	:cd_title,:artist_name,:label_name,:product_image,:price,:stock,:buy_capable,
	  product_discs_attributes: [:id, :disc_title, :_destroy,
		product_disc_songs_attributes: [:id, :song_name, :_destroy] ])
	end
end
