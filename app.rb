require 'pusher'
require 'sinatra'
require 'dotenv'
Dotenv.load('api_keys.env')

pusher = Pusher::Client.new({
  app_id: ENV['API_ID'],
  key: ENV['API_KEY'],
  secret: ENV['API_SECRET'],
  cluster: ENV['CLUSTER'],
  encrypted: true
  })

get '/' do
  erb :index
end

post '/notification' do
  message = params[:message]

  pusher.trigger('notifications', 'new_notification', {
      message: message
  })
end
