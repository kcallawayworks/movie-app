json.array! @actors.each do |actor|
  json.first_name actor.first_name
  json.last_name actor.last_name
  json.known_for actor.known_for
end

#Turns the current element into an array and iterates over the passed collection, adding each iteration as an element of the resulting array.

# Example: of the json.array!

# json.array!(@people) do |person|
#   json.name person.name
#   json.age calculate_age(person.birthday)
# end

# [ { "name": David", "age": 32 }, { "name": Jamie", "age": 31 } ]
