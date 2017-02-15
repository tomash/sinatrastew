# app.rb
require "sinatra"
require "metainspector"

get "/" do
  "Hello world!"
end

get "/new" do
  erb :new
end

post "/posts" do
  puts params["scrape_url"]
  puts "scraping..."

  page = MetaInspector.new('http://sitevalidator.com')
  puts "dumping everything:"
  puts page.to_hash.inspect
  redirect to("/")
end