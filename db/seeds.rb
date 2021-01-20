require 'pry'
require 'json'
require 'rest-client'


@char_response = JSON.parse(RestClient.get("https://rickandmortyapi.com/api/character"))
@loc_response = JSON.parse(RestClient.get("https://rickandmortyapi.com/api/location"))

Character.destroy_all
Location.destroy_all 
Adventure.destroy_all


@char_response["results"].each do |character|
    Character.create(name: character["name"], species: character["species"], image: character["image"])
end

@loc_response["results"].each do |location|
    Location.create(name: location["name"], dimension: location["dimension"])
end

Adventure.create(
    character_id: 1,
    location_id: 1
)