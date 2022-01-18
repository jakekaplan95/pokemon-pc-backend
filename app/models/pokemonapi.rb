require 'httparty'
require 'pp'
class Pokemonapi
    include HTTParty
    base_uri 'https://pokeapi.co/api/v2/pokemon'

    def initialize()
    end

    def getPokemon(nameORid)
        self.class.get("/"+nameORid)
    end

    def getAllPokemon()
        self.class.get("")
    end
end