# nginx-redirect

This is a simple docker container that listens on port 80 and performs redirects.

There are three environment variables you can set,

`REDIRECT_REGEX`, this is the nginx regex to listen on. This will default to `^/(.*)` if not set.
`REDIRECT_DESTINATION`, This is the location to redirect to.
`REDIRECT_PERMANENT`, if set to 1, then nginx will return a 302 for a pernament redirect. You can leave this unset, or set it to another value, it will be added to the rewrite rule in the nginx config.

Thats it! This is intendd to be a simple container, so if you need additional configuration, you should write your own nginx config.
