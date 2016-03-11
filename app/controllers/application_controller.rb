class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  require 'will_paginate/array'
  def not_found
    render file: 'public/404.html'
  end
end
