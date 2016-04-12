class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    # @user = User.find_by(params[:id])

  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to root_path
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

private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :current_school, :dob, :gpa, :email, :password, :password_confirmation)
  end

end
