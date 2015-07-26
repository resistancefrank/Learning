require 'sinatra'

cool_sounds = [
  "Animal/Crickets",
  "Animal/HorseGallop",
  "Animal/WolfHoul",
  "Effects/Bubbles",
  "Electronic/ComputerBeeps1",
  "Electronic/ComputerBeeps2",
  "Electronic/SpaceRipple",
  "Electronic/Whoop",
  "Human/Laugh-male2",
  "Human/Scream-male1",
  "Instrument/SpookyString",
  "Percussion/Gong",
  "Vocals/Singer1"
]

get '/hi' do
    "Hello World!" 
 end
 
 get '/' do
    '<html><body><center>
    <br />
    <br />
    <br />
    <ul>
    <li><a href="/hi">hi</a></li>
    <br />
    <li><a href="/play">play</a></li>
    </ul>
    </center></body></html>
    '
end


get '/play' do
  random_sound = cool_sounds[rand(cool_sounds.size)]
	system('aplay /usr/share/scratch/Media/Sounds/#{random_sound}.wav')
	redirect back
end
