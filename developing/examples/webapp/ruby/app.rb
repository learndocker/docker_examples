require 'sinatra'

set :bind, '0.0.0.0'
set :port, 9494

get '/' do
  File.open('/tmp/requests.txt', 'a') do |file|
    file.puts "IP: #{request.ip}"
    file.puts "Hostname: #{Socket.gethostname}"
    file.puts "Path: #{request.path}"
    file.puts "Timestamp: #{Time.now}"
    file.puts '------------'
  end
  'Hello World!'
end
