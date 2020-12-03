class ApplicationController < ActionController::Base
  helper_method :logged_in, :current_user, :verify_that_user_is_owner_of_record #makes these methods available to all views

  def loggin
    @user = User.find_by(username: params[:username])
  end

  private #private methods in the application controller are helpers for all controllers

  def redirect_if_not_logged_in
    #redirect the user if the user is not logged in
  end

  def logged_in?
    #check to see if user is logged in
  end

  def current_user
    #check to see who the current user is
  end

  def verify_that_user_is_owner_of_record
    "Checking to see if this works in all views" #HINT: It does
  end

end
