class College < ActiveRecord::Base
  belongs_to :user

  def self.search(name)
    base_url = "https://inventory.data.gov"
    start_url = "/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4&q=#{name}"
    response = HTTParty.get(base_url + start_url)
    if response["success"]
      results = response["result"]["records"]
    end
  end

  def self.target(name)
    base_url = "https://inventory.data.gov"
    target_url = "/api/action/datastore_search?resource_id=38625c3d-5388-4c16-a30f-d105432553a4&q=#{name}"
    response = HTTParty.get(base_url + target_url)
    if response["success"]
      result = response["result"]["record"]
    end
  end
end
