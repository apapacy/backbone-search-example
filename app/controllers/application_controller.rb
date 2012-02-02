class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_search, :current_search?

  def current_search
    @current_search ||= Search.find(session[:search_id])
  end

  def current_search?
    session[:search_id].present? || defined?(@current_search)
  end
end
