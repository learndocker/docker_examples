require 'sinatra'

set :bind, '0.0.0.0'
set :port, 9494

get '/' do
  'Hello world!'
end
