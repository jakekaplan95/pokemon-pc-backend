class UpdatePokemonteams < ActiveRecord::Migration[6.1]
    def change
      change_column :pokemonteams, :pokemon1, :string
      change_column :pokemonteams, :pokemon2, :string
      change_column :pokemonteams, :pokemon3, :string
      change_column :pokemonteams, :pokemon4, :string
      change_column :pokemonteams, :pokemon5, :string
      change_column :pokemonteams, :pokemon6, :string
    end
  end
