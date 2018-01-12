require 'sinatra'
require 'pg'

set :bind, '0.0.0.0'
set :port, 9494

get '/' do
  conn = PG::Connection.open(ENV['POSTGRES_HOST'], 5432, '', '', ENV['POSTGRES_DB'], 
                             ENV['POSTGRES_USER'], ENV['POSTGRES_PASSWORD'])
  sql = "INSERT INTO requests (ip, path, host, requested_at) VALUES ($1, $2, $3, $4)"
  res  = conn.exec(sql, [request.ip, '/', Socket.gethostname, Time.now])

  sql = "SELECT ip, path, host, requested_at FROM requests ORDER BY id DESC LIMIT 25;"
  res  = conn.exec(sql)

  conn.finish

  requests_table = res.map do |row|
    values = row.map do |column|
      "<td>#{column[1]}</td>"
    end.join('')
    "<tr>#{values}</tr>"
  end.join('')

  <<-BODY
    <html>
      <body>
        <h1>The requests</h1>
        <table style="width: 100%;" border="1">
          <tr>
            <th>IP</th>
            <th>Path</th>
            <th>Container</th>
            <th>Timestamp</th>
          </tr>
          #{requests_table}
        </table>
      </body>
    </html>
  BODY
end
