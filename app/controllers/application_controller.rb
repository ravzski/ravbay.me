class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :set_xsrf_token_cookie

  def index
    render text: "", layout: true
  end

  #
  # This method reads the CSRF token from cookie
  # No more angular hackish way of getting CSRF tokens
  #
  def set_xsrf_token_cookie
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

end
