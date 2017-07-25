class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # skip_before_filter  :verify_authenticity_token
  # skip_before_action :verify_authenticity_token
  # protect_from_forgery with: :null_session
  protect_from_forgery prepend: true
end
