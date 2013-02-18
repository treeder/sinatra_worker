require 'rest'
require 'sinatra'

port = ENV['PORT'].to_i
puts "STARTING SINATRA on port #{port}"
my_app = Sinatra.new do
  set :port, port
  get('/') { "hi" }
  get('/*') { "you passed in #{params[:splat].inspect}" }
end
my_app.run!


