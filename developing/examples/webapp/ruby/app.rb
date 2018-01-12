require 'sinatra'
require 'pg'

set :bind, '0.0.0.0'
set :port, 9494

get '/' do
  conn = PG::Connection.open(ENV['POSTGRES_HOST'], 5432, '', '', ENV['POSTGRES_DB'], 
                             ENV['POSTGRES_USER'], ENV['POSTGRES_PASSWORD'])
  sql = "INSERT INTO requests (ip, path, host, requested_at) VALUES ($1, $2, $3, $4)"
  res  = conn.exec(sql, [request.ip, '/', Socket.gethostname, Time.now])
  conn.finish
  'Hello, World!'
end
