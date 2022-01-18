class PokemonteamsController < ApplicationController
  before_action :set_pokemonteam, only: [:show, :update, :destroy]

  # GET /pokemonteams
  def index
    @pokemonteams = Pokemonteam.all

    render json: @pokemonteams
  end

  # GET /pokemonteams/1
  def show
    render json: @pokemonteam
  end

  # POST /pokemonteams
  def create
    @pokemonteam = Pokemonteam.new(pokemonteam_params)

    if @pokemonteam.save
      render json: @pokemonteam, status: :created, location: @pokemonteam
    else
      render json: @pokemonteam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemonteams/1
  def update
    if @pokemonteam.update(pokemonteam_params)
      render json: @pokemonteam
    else
      render json: @pokemonteam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemonteams/1
  def destroy
    @pokemonteam.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemonteam
      @pokemonteam = Pokemonteam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemonteam_params
      params.require(:pokemonteam).permit(:name, :pokemon1, :pokemon2, :pokemon3, :pokemon4, :pokemon5, :pokemon6)
    end
end
