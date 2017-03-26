require 'rails_helper'

describe User do
    context "when email is blank or invalid" do
        
	it "should not validate users without an email address" do
        expect(User.new(password: "example")).not_to be_valid
        expect(User.new(email: "example", password: "example")).not_to be_valid  end
    end
end
