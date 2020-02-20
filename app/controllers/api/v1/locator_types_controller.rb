class Api::V1::LocatorTypesController < ApplicationController
  before_action :set_locator_type, only: [:show, :update, :destroy]

  # GET /locator_types
  # GET /locator_types.json
  def index
    @locator_types = LocatorType.all
  end

  # GET /locator_types/1
  # GET /locator_types/1.json
  def show
    render :show
  end

  # POST /locator_types
  # POST /locator_types.json
  def create
    @locator_type = LocatorType.new(locator_type_params)

    if @locator_type.save
      render :show, status: :created
    else
      render json: @locator_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locator_types/1
  # PATCH/PUT /locator_types/1.json
  def update
    if @locator_type.update(locator_type_params)
      render :show, status: :ok
    else
      render json: @locator_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locator_types/1
  # DELETE /locator_types/1.json
  def destroy
    @locator_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locator_type
      @locator_type = LocatorType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locator_type_params
      params.require(:locator_type).permit(:name)
    end
end
