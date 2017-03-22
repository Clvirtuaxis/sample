class UserRegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.persisted?
    end
  end
end