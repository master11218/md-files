require 'bundler'
Bundler.require
require 'rack/contrib/try_static'

# require 'rack-livereload'

# use Rack::LiveReload

use Rack::TryStatic,
    :root => ".",  # static files root dir
    :urls => %w[/],     # match all requests
    :try => ['.html', 'index.html', '/index.html', 'html/index.html'] # try these postfixes sequentially
# otherwise 404 NotFound
run lambda { [404, {'Content-Type' => 'text/html'}, ['Whoops! Not Found']]}