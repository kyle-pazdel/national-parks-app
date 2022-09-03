require "http"

# # This will return a response for one park
# response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=redw&api_key=")

# This will return a response for all parks
response = HTTP.get("https://developer.nps.gov/api/v1/parks?limit=600&api_key=")

park_information = response.parse(:json)

park_names_array = []
all_parks = park_information["data"]
all_parks.each do |park|
  park_hash = {}
  park_hash[:full_Name] = park["fullName"]
  park_hash[:park_code] = park["parkCode"]
  park_names_array << park_hash
end

p park_names_array

# p full_name = park_information["data"][0]["fullName"]
# p park_code = park_information["data"][0]["parkCode"]

# np_hash = {}
# np_hash[:full_name] = full_name
# np_hash[:park_code] = park_code
# p np_hash
