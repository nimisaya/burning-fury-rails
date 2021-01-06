class SessionController < ApplicationController
  def new
  end

  def create

  #1. check if email addressed entered is in users table
  user = User.find_by email: params[:email]

#did we find a user for that email address? (was it nill)
if user.present? 
 #credentials were correct - login successful!

session[:user_id] = user.id
redirect_to root_path

else
  #Either user was nill or password entered was incorrect
  flash[:error] = 'Invalid email or password'
  redirect_to login_path
end #login check

end #create



  def destroy
    session[:user_id] = nil
    redirect_to login_path #go back to login page
  end

end
