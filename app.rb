require 'pusher'
require 'dotenv'
Dotenv.load('api_keys.env')

API_KEY = ENV['API_KEY']
API_SECRET = ENV['API_SECRET']

pusher = Pusher::Client.new app_id: "470789", key: API_KEY, secret: API_SECRET, cluster: 'eu'

# trigger on 'my-channel' an event called 'my-event' with this payload:

pusher.trigger('my-channel', 'my-event', {
    message: 'hello world'
})
