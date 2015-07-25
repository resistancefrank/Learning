require 'sinatra'

get '/hi' do
    "Hello World!" 
 end
 
 get '/' do
    '<html><body><center>
    <ul>
    <li><a href="/hi">hi</a></li>
    <li><a href="/play">play</a></li>
    </ul>
    </center></body></html>
    '
end


get '/play' do
	system('aplay /usr/share/scratch/Media/Sounds/Animal/WolfHowl.wav')
	redirect back
end
