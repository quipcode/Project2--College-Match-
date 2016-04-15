class CollegesController < ApplicationController
  before_action :target_college, only: [:show, :search_api]

  def show
    # @college = College.new
    @college = College.new(name: params["INSTNM"], address: params["ADDR"], city: params["CITY"], state: params["STABBR"], zip: params["ZIP"], univ_id: params["UNITID"], link: params["WEBADDR"], user_id: "7")

    if @college.save
      redirect_to '/colleges'
    else
      render :show
    end
  end

  def create
  end

  def new
    @college = College.new
  end

  # Show all colleges a user has favorited
  def index
    @colleges = College.all
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
