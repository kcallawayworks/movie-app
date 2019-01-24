require 'http'

system 'clear'

response = HTTP.get("https://local3000/api/actors")

puts JSON.pretty_generate(response.parse)

