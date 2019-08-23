require 'sinatra'
require './config'
require './lib/generarPalabra.rb'

get '/configurar/:palabra' do |palabra|
    generar = Generar.new 
    session["guiones"] = generar.guiones(palabra)
    erb(:juego)
end

get '/configurar/' do
    generar = Generar.new 
    session["guiones"] = generar.guiones
    erb(:juego)
end