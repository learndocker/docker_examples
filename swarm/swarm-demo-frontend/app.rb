require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  <<-BODY
    <html>
      <body style="background: grey;">
        <h1>Docker Swarm Demo</h1>
        <p>This page was served by <b>#{Socket.gethostname}</b></p>
      </body>
    </html>
  BODY
end
