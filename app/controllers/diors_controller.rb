class DiorsController < ApplicationController
  before_action :set_dior, only: %i[ show update destroy ]

  # GET /diors
  # GET /diors.json
  def index
    @diors = Dior.all
    render json: @diors
  end

  # GET /diors/1
  # GET /diors/1.json
  def show
  end

  # POST /diors
  # POST /diors.json
  def create
    @dior = Dior.new(dior_params)

    if @dior.save
      render json: @dior, status: :created
    else
      render json: @dior.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diors/1
  # PATCH/PUT /diors/1.json
  def update
    if @dior.update(dior_params)
      render :show, status: :ok, location: @dior
    else
      render json: @dior.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diors/1
  # DELETE /diors/1.json
  def destroy
    @dior.destroy!
    render json: { message: 'Delete successful'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dior
      @dior = Dior.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dior_params
      params.require(:dior).permit(:name, :price, :stock, :image)
    end
end
