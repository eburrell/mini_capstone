require "http"

response = HTTP.get("http://localhost:3000/api/product_individual").prase

puts JSON.pretty_generate(response)