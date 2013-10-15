class ApplicationController < ActionController::Base

  include Authem::ControllerSupport

  protect_from_forgery with: :exception

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

end
