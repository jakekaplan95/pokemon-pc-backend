require 'pokemonapi'
require 'pp'
class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :update, :destroy]

  # GET /pokemons
  def index
    @pokemons = Pokemonapi.new().getAllPokemon()

    render json: @pokemons
  end

  # GET /pokemons/1
  def show
    @pokeresponse = Pokemonapi.new().getPokemon(params[:id])
    render json: @pokeresponse
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      #@pokemon = Pokemon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.require(:pokemon).permit(:name, :identifier, :type, :ability, :health, :attack, :defense)
    end
end
