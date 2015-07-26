require 'sinatra'

#Thread.new do
#  loop do
#    system("fswebcam latest.jpg")
#    sleep 5
#  end
#end

get '/' do
  "
  <html><body>
    <center><img src='/latest.jpg'></center>
   </body></html>
  " 
end

get "/latest.jpg" do
  system("fswebcam latest.jpg")
  send_file 'latest.jpg'
end
