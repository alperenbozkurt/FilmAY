require "sinatra"
require "mysql2"
require "sinatra/flash"

enable :sessions

@siteurl = "http://localhost:4567"

def baglanti
  Mysql2::Client.new(host: "localhost", username: "root", password:"comolokko37", database: "FilmAY")
end

(Dir['./*/*.rb'].sort).each do |file|
  load file
end
