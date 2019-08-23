require 'sinatra'
require './config'

get '/' do
    session["word"] = params["word"]
    if session["word"] == "cat"
        "---"
    end
    erb(:juego)
end

get '/configurar/:palabra' do |palabra|
    session['palabraSecreta'] = palabra
    erb(:juego)
end