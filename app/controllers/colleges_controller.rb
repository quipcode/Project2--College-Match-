class CollegesController < ApplicationController
  before_action :target_college, only: [:show, :search_api]

  def show
    @college = College.target(@target)
  end

  def create
    @college = College.new

  end

  def new
  end

  # Show all colleges a user has favorited
  def index

  end

  # search api for params[:college_name]
  # and create?
  def search_api
    @results = College.search(params[:college_name])

  end

private
  def college_params
    params.require(:college).permit(:name, :address, :city, :state, :zip, :univ_id, :link, :user_id)
  end

  def target_college
    @target ||= ""
  end

end
