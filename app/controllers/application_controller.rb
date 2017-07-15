class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:product) << :image
 end
end
