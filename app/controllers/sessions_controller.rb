class SessionsController < ApplicationController
  def new
  end

  def create
    # We find a user by the email typed in the email input field and assign it to the variable 'user'
    user = User.find_by(email: params[:session][:email])

    # We check if that user exists and that it can be authenticated with the password typed in the password input field
    if user && user.authenticate(params[:session][:password])

      # If both of those evaluate to 'true', we create a key-value pair in the session hash. ':user_id' is the key and the user's id is the value
      session[:user_id] = user.id
      flash[:notice] = "Logged in!"
      redirect_to products_url
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to products_url
  end
end
