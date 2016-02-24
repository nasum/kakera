class SnipetsController < ApplicationController
  before_action :set_snipet, only: [:show, :update, :destroy]

  # GET /snipets
  def index
    @snipets = Snipet.all

    render json: @snipets
  end

  # GET /snipets/1
  def show
    render json: @snipet
  end

  # POST /snipets
  def create
    @snipet = Snipet.new(snipet_params)

    if @snipet.save
      render json: @snipet, status: :created, location: @snipet
    else
      render json: @snipet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snipets/1
  def update
    if @snipet.update(snipet_params)
      render json: @snipet
    else
      render json: @snipet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snipets/1
  def destroy
    @snipet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snipet
      @snipet = Snipet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snipet_params
      params.require(:snipet).permit(:name, :url, :sentence)
    end
end
