class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :identifier
      t.string :type
      t.string :ability
      t.integer :health
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
