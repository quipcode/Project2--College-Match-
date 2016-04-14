class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]



  def index
    @users = User.all

  end

  def new
    @user = User.new
  end

  def show

    url = "https://inventory.data.gov/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4"
    response = HTTParty.get(url)
    @sector = response
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
    if @user.update_attributes(user_params)
      redirect_to '/'
    else
      render :edit
    end

  end

  def destroy
    @user.destroy
    redirect_to '/'
  end

private
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
      params.require(:user).permit(:first_name, :last_name, :current_school, :dob, :gpa, :email, :password, :password_confirmation)
  end

end
