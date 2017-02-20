class GameplansController < ApplicationController
  before_action :set_gameplan, only: [:show, :update, :destroy]

  # GET /gameplans
  # GET /gameplans.json
  def index
    @gameplans = Gameplan.all
  end

  # GET /gameplans/1
  # GET /gameplans/1.json
  def show
  end

  # POST /gameplans
  # POST /gameplans.json
  def create
    @gameplan = Gameplan.new(gameplan_params)

    if @gameplan.save
      render :show, status: :created, location: @gameplan
    else
      render json: @gameplan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gameplans/1
  # PATCH/PUT /gameplans/1.json
  def update
    if @gameplan.update(gameplan_params)
      render :show, status: :ok, location: @gameplan
    else
      render json: @gameplan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gameplans/1
  # DELETE /gameplans/1.json
  def destroy
    @gameplan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameplan
      @gameplan = Gameplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameplan_params
      params.require(:gameplan).permit(:name, :user_id, :event_id)
    end
end
