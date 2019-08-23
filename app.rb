require 'sinatra'
require './config'


get '/configurar/:palabra' do |palabra|
    session["words"] = {"dog"=>"---", "cucumber"=>"--------", "agile" => "-----"}
    session['palabraSecreta'] = palabra
    session["guiones"] = session["words"][session["palabraSecreta"]]
    erb(:juego)
end