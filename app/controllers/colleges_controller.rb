class CollegesController < ApplicationController


  def show
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


  def index
    url = "https://inventory.data.gov/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4"
    response = HTTParty.get(url)


    @colleges = response
    @desired_college = params[:q]

    def sift_college
      @colleges.each do |x|

      end
    end
  end

end
