class Admins::GenresController < ApplicationController
  def new
  	@genre = Genre.new
  end

  def create
  	@genre = Genre.new(genre_params)
    @genre.save
    redirect_to new_admins_product_path
  end

  private

  def genre_params
  	params.require(:genre).permit(:id,:genre_name)
  end
end
