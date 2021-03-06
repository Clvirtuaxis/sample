class PaymentsController < ApplicationController
  
  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => @product.price.to_i * 100, # amount in cents, again
        :currency => "cad",
        :source => token,
        :description => params[:stripeEmail]
        )
      logger.debug "charges are #{charge}"

      	if charge.paid
      		Order.create(
	      		product_id: "@product_id",
	      		user_id: "@user_id", 
	      		total: "@product.price"
      			)
          UserMailer.successful_payment(@user, @product).deliver_now
        end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product), notice: "Thank you for purchasing at Virtuaxis!"
  end
end
