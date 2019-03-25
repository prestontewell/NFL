json.array! @teams.each do |team|
  json.partial! "team.json.jbuilder", team: team
end