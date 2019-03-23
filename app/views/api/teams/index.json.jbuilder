json.array! @teams.each do |teams|
  json.id teams.id
  json.club teams.club
  json.city teams.city
  json.stadium teams.stadium
  json.capacity teams.capacity
  json.founded teams.founded
end