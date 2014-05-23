require 'sinatra'
require 'pony'

if settings.environment == :production
  # if we're on heroku, use the sendgrid settings
  require './production_pony_options'
else
  # otherwise, use our normal email account
  require './development_pony_options'
end

get '/' do
  erb :index
end

post '/' do
  @name  = params[:name]
  @email = params[:email]

  # Pony.mail(:to=>@email, :subject=>"Welcome to Sams Sarnies, #{@name}", :body=>"Hi, #{@name}, you have been added to our mailling list. Best wishes, Sam.") # basic email sending code

  Pony.mail(:to=>@email, :subject=>"Welcome to Sams Sarnies, #{@name}",
						:body=>erb(:email, :layout => false)) # basic email sending code
  erb :thanks
end
