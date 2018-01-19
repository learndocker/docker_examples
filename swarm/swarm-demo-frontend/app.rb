require 'sinatra'
require 'erb'
require 'pg'

set :bind, '0.0.0.0'
set :port, 8080

min_healthchecks = ENV['MIN_REQUESTS_TILL_DEATH'] || 10
max_healthchecks = ENV['MAX_REQUESTS_TILL_DEATH'] || 25

AppState = {}
AppState[:total_requests] = 0
AppState[:total_healthchecks] = 0
AppState[:healthchecks_till_death] = rand(max_healthchecks - max_healthchecks) + min_healthchecks

get '/' do
  AppState[:total_requests] += 1

  manager = RequestManager.new
  manager.store_request(request.ip, '/', Socket.gethostname, Time.now)

  number_of_requests = ENV["NUMBER_OF_REQUESTS"] || 25

  erb :index, locals: {
    requests: manager.get_requests(number_of_requests),
    number_of_requests: number_of_requests, total_requests: AppState[:total_requests]
  }
end

get '/status' do
  AppState[:total_healthchecks] += 1
  if AppState[:total_healthchecks] >= AppState[:healthchecks_till_death]
    status 500
    'failure'
  else
    status 200
    'ok'
  end
end

class RequestManager

  def store_request(ip, path, host, requested_at)
    sql = "INSERT INTO requests (ip, path, host, requested_at) VALUES ($1, $2, $3, $4)"
    res  = conn.exec(sql, [ip, path, host, requested_at])
  end

  def get_requests(limit = 100)
    sql = "SELECT ip, path, host, requested_at FROM requests ORDER BY id DESC LIMIT $1;"
    res  = conn.exec(sql, [limit])
    res.map do |row|
      OpenStruct.new(row.to_h)
    end
  end

  private

  def conn
    @conn ||= PG::Connection.open(ENV['POSTGRES_HOST'], 5432, '', '', ENV['POSTGRES_DB'],
                                  ENV['POSTGRES_USER'], ENV['POSTGRES_PASSWORD'])
  end
end
