## Overview

A build of a Pusher app for realtime notifications for HTML5 Apps.

## Run

```ruby app.rb```

## Note

- I made a pull request for the tutorial [exemplar](https://github.com/pusher/realtime-notifications-tutorial/tree/ruby)
- The Pusher class requires the cluster to be set to the appropriate region, in addition to the API keys. Without this running the app throws the below error:
``` Bad request: Unknown auth_key (Pusher::Error)```
