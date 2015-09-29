require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do
  years = Array(1971..2012)
  erb :years, layout: :main
end

get '/states' do
  states=["Ohio", "Illinois", "Florida", "California", "Oregon"]
  states.sort!
  erb :states, layout: :main
end
