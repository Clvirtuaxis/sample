require 'rails_helper'

describe Comment do

	context "when adding comment" do

		before do
			@product = Product.create!(name: "vr", description: "grey", image_url: "dhsl.jpg", price: 123.12)
  		@user = User.create!(email: "test@test.com", password: "123456")
		end

		it "comment not valid because of body missing" do
			@comment = Comment.new(user: @user, product: @product, rating: 1)
			expect(@comment).not_to be_valid
		end

		it "comment not valid because of user missing" do
			@comment = Comment.new(body: "WOW!", product: @product, rating: 5)
			expect(@comment).not_to be_valid
		end

		it "comment not valid because of rating missing" do
			@comment = Comment.new(user: @user, body: "OK", product: @product)
			expect(@comment).not_to be_valid
		end

		it "comment valid" do
			expect(Comment.new(user: @user, product: @product, body: "Decent", rating: 2)).to be_valid
		end
	end
end