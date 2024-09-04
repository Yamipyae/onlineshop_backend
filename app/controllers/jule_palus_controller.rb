class JulePalusController < ApplicationController
  before_action :set_jule_palu, only: %i[ index show update destroy ]

  # GET /jule_palus
  # GET /jule_palus.json
  def index
    @jule_palus = JulePalu.all
    render json: @jule_palus
  end

  # GET /jule_palus/1
  # GET /jule_palus/1.json
  def show
  end

  # POST /jule_palus
  # POST /jule_palus.json
  def create
    @jule_palu = JulePalu.new(jule_palu_params)

    if @jule_palu.save
      render :show, status: :created, location: @jule_palu
    else
      render json: @jule_palu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jule_palus/1
  # PATCH/PUT /jule_palus/1.json
  def update
    if @jule_palu.update(jule_palu_params)
      render :show, status: :ok, location: @jule_palu
    else
      render json: @jule_palu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jule_palus/1
  # DELETE /jule_palus/1.json
  def destroy
    @jule_palu.destroy!
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jule_palu
      @jule_palu = JulePalu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jule_palu_params
      params.require(:jule_palu).permit(:name, :price, :stock, :image)
    end
end
