# What is proxxit?

Reddit, 'the front page of the internet', supports JSON requests for much it's data. It is, however, NOT exposed as JSONP services, 
which makes consuming them via a Javascript-based application difficult due to cross domain request security policies baked into browsers.

Proxxit helps to bypass this as a simple proxy between reddit and a client-side application by ferrying the request through a simple Rails application
with JSONP enabled.

## How the reddit API works

Reddit exposes its data as JSON structures that are easily accessed by appending <tt>/.json</tt> to the end of any request.

For example, to get the JSON representation of the /r/pics subreddit, you would enter the following URL:

	http://www.reddit.com/r/pics/.json
	
Similiarly, to get the comment thread in a JSON format, you would again append <tt>/.json</tt> to the end of the request:

	http://www.reddit.com/r/pics/comments/zy907/shadow/.json
	
## How proxxit works

If you intend on using the JSON data directly from reddit in a client-side application, you will quickly encounter the limitations imposed by disallowing JSONP requests.
Proxxit fills this gap by acting a simple go-between reddit and your Javascript application, by making a request to reddit via a Rails application, then returning the 
identical, unaltered JSON message.

### Getting a subreddit's story listing

To get a specific subreddit's story listing, make a request to <tt>/r/:subreddit</tt>:

	http://www.proxxit.net/r/pics
	
### Getting a submission's comment thread

To get a submission's comment thread, make a request to <tt>/r/:subreddit/comments/:threadid</tt>:

	http://www.proxxit.net/r/pics/comments/zy907/

## Notes

This application was created primarily as a simple JSON service for a PhoneGap tech demo, therefore it is pretty simple, amatuer, and unpolished :) Currently only the two prior mentioned methods are supported.

