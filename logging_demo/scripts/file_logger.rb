file = File.open('/dev/stdout', 'w')
file.write "This is on STDOUT\n"

file = File.open('/dev/stderr', 'w')
file.write "This is on STDERR\n"
