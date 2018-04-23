class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to task_lists_url

      # logs in the user and sends them to user page
    else
      flash.now[:danger] = "Invalid email/password combination"
      render "new"
      # creates an error meessage
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
