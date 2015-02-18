require "sinatra"

get "/play" do
  puts "got req to play song #{params[:name]}"
  file = "#{params[:name]}.mp3"
  `mpg123 #{File.join(__dir__, "songs", file)}`
  "ok"
end
