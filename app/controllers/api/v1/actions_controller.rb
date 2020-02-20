class Api::V1::ActionsController < ApplicationController
  before_action :set_action, only: [:show, :update, :destroy]

  # GET /actions
  # GET /actions.json
  def index
    @actions = Action.all
  end

  # GET /actions/1
  # GET /actions/1.json
  def show
    render :show
  end

  # POST /actions
  # POST /actions.json
  def create
    @action = Action.new(action_params)

    if @action.save
      render :show, status: :created
    else
      render json: @action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /actions/1
  # PATCH/PUT /actions/1.json
  def update
    if @action.update(action_params)
      render :show, status: :ok
    else
      render json: @action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /actions/1
  # DELETE /actions/1.json
  def destroy
    @action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action
      @action = Action.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_params
      params.require(:action).pernmit(:name)
    end
end
