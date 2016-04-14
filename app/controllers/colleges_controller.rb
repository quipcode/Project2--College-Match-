class CollegesController < ApplicationController


  def show
    @results = College.search(params[:college_name])
  end

  def create
    redirect_to '/enter_college'
    @desired_college = params[:college_name]
    # @college = College.new
    url = "https://inventory.data.gov/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4"
    # response = HTTParty.get(url)
    # @college_list = response["result"]["record"]
    # @target_college = @college_list.select do |x|
    #   x.include? params[:college_name]
    # end


  end


  # Show all colles a user has favorited
  def index

  end

  # search api for params[:college_name]
  # and create?
  def search_api
    @results = College.search(params[:college_name])
  end
end
