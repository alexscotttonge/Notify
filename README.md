## Overview

A build of a Pusher app for realtime notifications for HTML5 Apps.

## Run

```ruby app.rb```

## Note

- I made a pull request for the tutorial [exemplar](https://github.com/pusher/realtime-notifications-tutorial/tree/ruby)
- The Pusher class requires the cluster to be set to the appropriate region, in addition to the API keys. Without this running the app throws the below error:
``` Bad request: Unknown auth_key (Pusher::Error)```

## Testing

I looked for ways to test the API calls. The [Pusher documentation](https://github.com/pusher-community/pusher-js-test-stub) has a version to stub API calls but is out of date - currently only supporting PusherJS version 3.1.

I used RSpec with ```Rack-Test``` for two of the basic API calls. There is further work for testing the calls for POST'ing to the channels:
- ```/notification/info```
- ```notification/warning```

With further time I would change the testing framework to Capybara which would have allowed me to successfully test each API call.
