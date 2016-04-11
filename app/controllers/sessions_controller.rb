class SessionsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id.to_s
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
