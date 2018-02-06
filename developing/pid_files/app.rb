def pidfile
  '/run/app.pid'
end

def write_pid
  puts "Writing my PID (#{Process.pid}) to #{pidfile}"
  File.open(pidfile, "w") do |f|
    f.write Process.pid
  end
end

def running?
  return false unless File.exists?(pidfile)
  pid = File.read(pidfile)
  Process.kill(0, pid.to_i)
  pid
rescue Errno::ESRCH
  false
end

def do_work
  while true
    puts 'Working on solving the problem...'
    sleep 1
  end
end

if pid = running?
  puts "Application is already running as #{pid}, exiting..."
  exit 1
else
  write_pid
  do_work
end
