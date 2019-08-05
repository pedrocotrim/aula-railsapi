class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
  acts_as_token_authentication_handler_for User
end
