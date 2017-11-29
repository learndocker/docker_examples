require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'erb'
require './models/request'

set :database, {
  adapter: 'postgresql',
  encoding: 'unicode',
  pool: 2,
  host: ENV['POSTGRES_HOST'],
  database: ENV['POSTGRES_DB'],
  username: ENV['POSTGRES_USER'],
  password: ENV['POSTGRES_PASSWORD'],
}
set :raise_errors, true

class App < Sinatra::Base
  get '/' do
    Request.create!(ip: request.ip, host: Socket.gethostname, path: request.path, timestamp: Time.now)
    erb :index, locals: { requests: Request.all.order(timestamp: :desc).limit(25) }
  end
end
