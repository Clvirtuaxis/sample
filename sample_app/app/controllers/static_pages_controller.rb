class StaticPagesController < ApplicationController
  def index
  end

  def featured
  	@featured_product = Product.first
  end
end


