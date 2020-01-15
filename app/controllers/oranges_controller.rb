class OrangesController < ApplicationController
  before_action :set_orange, only: [:show, :update, :destroy]

  # GET /oranges
  def index
    @oranges = Orange.all

    render json: @oranges
  end

  # GET /oranges/1
  def show
    render json: @orange
  end

  # POST /oranges
  def create
    @orange = Orange.new(orange_params)

    if @orange.save
      render json: @orange, status: :created, location: @orange
    else
      render json: @orange.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /oranges/1
  def update
    if @orange.update(orange_params)
      render json: @orange
    else
      render json: @orange.errors, status: :unprocessable_entity
    end
  end

  # DELETE /oranges/1
  def destroy
    @orange.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orange
      @orange = Orange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orange_params
      params.require(:orange).permit(:color)
    end
end
