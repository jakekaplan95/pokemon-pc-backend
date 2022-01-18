class CreatePokemonteams < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemonteams do |t|
      t.string :name
      t.integer :pokemon1
      t.integer :pokemon2
      t.integer :pokemon3
      t.integer :pokemon4
      t.integer :pokemon5
      t.integer :pokemon6

      t.timestamps
    end
  end
end
