class Api::V1::StepsController < ApplicationController
  before_action :set_step, only: [:show, :update, :destroy]

  # GET /steps
  # GET /steps.json
  def index
    @steps = Step.all
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    render :show
  end

  # POST /steps
  # POST /steps.json
  def create
    @testcase = Testcase.find(params[:testcase_id])
    @step = @testcase.steps.new(step_params)
    byebug
    if @step.save
      render :show, status: :created
    else
      render json: @step.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    if @step.update(step_params)
      render :show, status: :ok
    else
      render json: @step.errors, status: :unprocessable_entity
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:number, :description, :locator, :skip, :testcase_id, :actionValue)
    end
end
