require 'sinatra'
require './config'

get '/' do
    session["words"] = ["dog"]
    if session["words"][0] == "dog"
        "---"
    end
    #erb(:juego)
end

get '/configurar/:palabra' do |palabra|
    session['palabraSecreta'] = palabra
    erb(:juego)
end