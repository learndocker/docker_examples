require './app/anagram_checker.rb'

checker = AnagramChecker.new

while (true)
  print "Please input the first word: "
  a = gets.chomp
  print "Please enter the second word: "
  b = gets.chomp

  puts "Comparing words..."
  if checker.anagram?(a, b)
    puts "#{a}/#{b} is a valid anagram"
  else
    puts "#{a}/#{b} is NOT a valid anagram"
  end
  puts
end
