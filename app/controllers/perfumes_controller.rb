class PerfumesController < ApplicationController
  before_action :set_perfume, only: %i[ show update destroy ]

  # GET /perfumes
  # GET /perfumes.json
  def index
    @perfumes = Perfume.all
    render json: @perfumes
  end

  # GET /perfumes/1
  # GET /perfumes/1.json
  def show
  end

  # POST /perfumes
  # POST /perfumes.json
  def create
    @perfume = Perfume.new(perfume_params)

    if @perfume.save
      render json: @perfume
    else
      render json: @perfume.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perfumes/1
  # PATCH/PUT /perfumes/1.json
  def update
    if @perfume.update(perfume_params)
      render :show, status: :ok, location: @perfume
    else
      render json: @perfume.errors, status: :unprocessable_entity
    end
  end

  # DELETE /perfumes/1
  # DELETE /perfumes/1.json
  def destroy
    @perfume.destroy!
    render json: { message: 'Delete successful'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfume
      @perfume = Perfume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perfume_params
      params.require(:perfume).permit(:name, :price, :stock, :image)
    end
end
