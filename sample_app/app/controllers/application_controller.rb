class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def after_sign_out_path_for(resource_or_scope)
      products_path
  end

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to main_app.root_url, alert: exception.message
  end

end
