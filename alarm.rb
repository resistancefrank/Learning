#!/usr/bin/env ruby
#

require 'colored'
def fancy_sleep(delay)
  puts "Seconds left: "
  delay.times do  |i|
    if i % 10 == 0
        print "#{delay - i}".red
	puts if i % 60 ==0
    else
        print ".".green
    end
    STDOUT.flush
    sleep 1
  end
end

alarm= "/usr/share/scratch/Media/Sounds/Effects/BellToll.wav"

puts "how many minutes should i wait before sounding the alarm?"
delay = gets.chomp.to_i
puts "how many times should i sound the alarm?"
repeat= gets.chomp.to_i
puts "i will wait #{delay} minute(s) and i will sound the alarm #{repeat} time(s)"
fancy_sleep delay*60
repeat.times do
	system("aplay #{alarm}")
end
