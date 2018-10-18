require_relative './config/init.rb'
set :run, true

get '/' do
  @name = "Emily Sceats"
  erb :"home"
end

get '/date' do 
  @date = DateTime.now
  erb :"date"
end

get '/signup' do
    @signup = ""
    erb :"signup"
  end
 
post '/signup' do
  byebug
  user = User.new(params[:user])
  user.save
  if user.save
    @message = "You have successfully registered!"
  else
    @message = "Your email or password is invalid, please try again."
  end
  redirect "/signup"
  erb :"user"
end 
  
  
