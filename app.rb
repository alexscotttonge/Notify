require 'pusher'
require 'dotenv'
Dotenv.load('api_keys.env')

pusher = Pusher::Client.new({
  app_id: ENV['API_ID'],
  key: ENV['API_KEY'],
  secret: ENV['API_SECRET'],
  cluster: ENV['CLUSTER']
  })

# trigger on 'my-channel' an event called 'my-event' with this payload:

pusher.trigger('my-channel', 'my-event', {
    message: 'hello world'
})
