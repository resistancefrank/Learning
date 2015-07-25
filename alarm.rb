alarm= "/usr/share/scratch/Media/Sounds/Effects/BellToll.wav"

puts "how many minutes should i wait before sounding the alarm?"
delay = gets.chomp.to_i
puts "how many times should i sound the alarm?"
repeat= gets.chomp.to_i
puts "i will wait #{delay} minute(s) and i will sound the alarm #{repeat} time(s)"
sleep delay *60
repeat.times do
	system("aplay #{alarm}")
end
