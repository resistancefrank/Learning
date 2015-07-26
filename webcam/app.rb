require 'sinatra'

#Thread.new do
#  loop do
#    system("fswebcam latest.jpg")
#    sleep 5
#  end
#end

get '/' do
  '
  <html>
  <META HTTP-EQUIV="refresh" CONTENT="10">
  <body>
    <center><img src="/latest.jpg"></center>
   </body></html>
  '
end

get "/latest.jpg" do
  system("fswebcam -r 1280x720 latest.jpg")
  send_file 'latest.jpg'
end
