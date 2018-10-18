require_relative './config/init.rb'
set :run, true

get '/' do
  @name = "Emily Sceats"
  erb :"home"
end

get '/' do 
  @date = DateTime.now
  erb :'date'
end
