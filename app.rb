require 'sinatra/base'
require 'pusher'
require 'sinatra'
require 'dotenv'
require 'cgi'
Dotenv.load('api_keys.env')

class App < Sinatra::Base

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

  post '/notification/success' do
    message = CGI.escape_html params[:message]

    pusher.trigger('success-notifications', 'success_notification', {
        message: message
    })
  end

  post '/notification/info' do
    message = CGI.escape_html params[:message]

    pusher.trigger('info-notifications', 'info_notification', {
        message: message
    })
  end

  run! if app_file == $0
end
