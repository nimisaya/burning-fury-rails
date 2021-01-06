class ApplicationController < ActionController::Base

  before_action :fetch_user


def fetch_user
  #check if the user_id in the session hash is the ID of the real user in our tables

if session[:user_id].present?
  @current_user = User.find_by id: session[:user_id]
end

  #if we did get nil from user id above delete the session (because the user_id is invalid)
  session[:user_id] = nil unless @current_user.present?
end # fetch user

end
