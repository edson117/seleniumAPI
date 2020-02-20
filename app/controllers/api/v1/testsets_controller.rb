class Api::V1::tTestsetsController < ApplicationController
  before_action :set_testset, only: [:show, :update, :destroy]

  # GET /testsets
  # GET /testsets.json
  def index
    @testsets = Testset.all
  end

  # GET /testsets/1
  # GET /testsets/1.json
  def show
    render :show
  end

  # POST /testsets
  # POST /testsets.json
  def create
    @testset = Testset.new(testset_params)

    if @testset.save
      render :show, status: :created
    else
      render json: @testset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testsets/1
  # PATCH/PUT /testsets/1.json
  def update
    if @testset.update(testset_params)
      render :show, status: :ok
    else
      render json: @testset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testsets/1
  # DELETE /testsets/1.json
  def destroy
    @testset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testset
      @testset = Testset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testset_params
      params.require(:testset).permit(:name, :description)
    end
end
