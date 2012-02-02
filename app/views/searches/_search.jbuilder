json.id     search.id
json.q      search.q

unless search.people.empty?
  json.people search.people.all do |json, person|
    json.id          person.id
    json.first_name  person.first_name
    json.last_name   person.last_name
  end
end
