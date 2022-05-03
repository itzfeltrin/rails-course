class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session.update({ :user_id => user.id })
      flash[:notice] = "Logged in successfully"
      redirect_to user
    else
      flash.now[:alert] = "Credentials are not valid"
      render 'sessions/new'
    end
  end

  def destroy
    session.update({ :user_id => nil })
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
end
