class StaticPagesController < ApplicationController
  def index
      
  end

  def featured
  	@products = Product.limit(2)
  end
end


