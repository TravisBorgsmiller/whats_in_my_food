class FoodsController < ApplicationController

  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-KEY"] = 'tWNifQHlw5ICW9xyqHGydCuXFC6CzYfITia3cvA5'
    end

    # response = conn.get("/congress/v1/members/house/#{state}/current.json")
    response = conn.get("https://api.nal.usda.gov/fdc/v1/search?api_key='tWNifQHlw5ICW9xyqHGydCuXFC6CzYfITia3cvA5'\&generalSearchInput=Sweet%Potatoeslimit=10")
    binding.pry

  end

end
