class SalonController < ApplicationController
  def index
    @products = Product.all
    @icons = Icon.all
  end
end
