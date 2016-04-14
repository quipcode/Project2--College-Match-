class College < ActiveRecord::Base
  belongs_to :user

  def self.search(name)
    base_url = "https://inventory.data.gov"
    start_url = "/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4&q=#{name}"
    response = HTTParty.get(base_url + start_url)
    if response["success"]
      results = response["result"]["records"]
      # can't match by name. maybe display those results and let use pick?
      # if results.empty?
      #   next_url = response["result"]["_links"]["next"]
      #   response = HTTParty.get(base_url + next_url)
      # end
    end
  end
end
