class ProductsController < ApplicationController
<<<<<<< HEAD
    def index
        @products = Product.all
    end
  
    def show
        @product = Product.find(params[:id])
    end
  end
  
=======
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end
end
>>>>>>> 539b406a38defd9fe7b6ecdd2ceb92cee3fb9f3c
