class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new

  end

  def show
    # @user = User.find_by(params[:id])

  end

  def create
    @user = User.new({
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })

    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

end
