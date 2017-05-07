FactoryGirl.define do
	sequence(:name) { |n| "bike#{n}@example.com" }
	
	factory :product do
		name
		description "Awesome"
		image_url "vive.jpg"
		price 11
	end
end

