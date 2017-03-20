FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@email.com" }

	factory :user do
		email 
    password "example"
    first_name "example"
    last_name "example"
    admin false
	end

	factory :admin, class: User do
	  email 
	  password "qwertyuiop"
	  first_name "Admin"
	  last_name "User"
	  admin true
	end

end

