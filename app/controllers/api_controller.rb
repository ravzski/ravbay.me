class ApiController < ApplicationController
  include Common

  protect_from_forgery with: :null_session
  before_action :authenticate_request

end
