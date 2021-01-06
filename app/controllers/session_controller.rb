class SessionController < ApplicationController
  def new
  end

  def create
    #check if email address entered in form is actually in the database
    user = User.find_by email: params[:email]

    #did we find the user for the email address? - both need to be true for user to login
    if user.present? && user.authenticate( params[:password] )
      #login success
      session[:user_id] = user.id

      redirect_to root_path
    else
      #temporary flash hash - shown only for the next page reload (allowing for error messages)
      flash[:error] = 'Invalid email or password'
      redirect_to login_path
      #login fail
    end #end login check

  end #end create

  def destroy
    session[:user_id] = nil #logs out the user
    redirect_to login_path
  end
end
