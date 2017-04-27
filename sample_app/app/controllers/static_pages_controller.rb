class StaticPagesController < ApplicationController
  def index

  end

  def featured
  	@products = Product.limit(2)
  end
  
  def received
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @question = params[:question]
    UserMailer.contact_form(@email, @first_name, @last_name, @question).deliver_now
  end
end


