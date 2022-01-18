require "test_helper"

class PokemonteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemonteam = pokemonteams(:one)
  end

  test "should get index" do
    get pokemonteams_url, as: :json
    assert_response :success
  end

  test "should create pokemonteam" do
    assert_difference('Pokemonteam.count') do
      post pokemonteams_url, params: { pokemonteam: { name: @pokemonteam.name, pokemon1: @pokemonteam.pokemon1, pokemon2: @pokemonteam.pokemon2, pokemon3: @pokemonteam.pokemon3, pokemon4: @pokemonteam.pokemon4, pokemon5: @pokemonteam.pokemon5, pokemon6: @pokemonteam.pokeon6 } }, as: :json
    end

    assert_response 201
  end

  test "should show pokemonteam" do
    get pokemonteam_url(@pokemonteam), as: :json
    assert_response :success
  end

  test "should update pokemonteam" do
    patch pokemonteam_url(@pokemonteam), params: { pokemonteam: { name: @pokemonteam.name, pokemon1: @pokemonteam.pokemon1, pokemon2: @pokemonteam.pokemon2, pokemon3: @pokemonteam.pokemon3, pokemon4: @pokemonteam.pokemon4, pokemon5: @pokemonteam.pokemon5, pokemon6: @pokemonteam.pokemon6 } }, as: :json
    assert_response 200
  end

  test "should destroy pokemonteam" do
    assert_difference('Pokemonteam.count', -1) do
      delete pokemonteam_url(@pokemonteam), as: :json
    end

    assert_response 204
  end
end
