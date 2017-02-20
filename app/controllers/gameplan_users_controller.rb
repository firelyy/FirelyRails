class GameplanUsersController < ApplicationController
  before_action :set_gameplan_user, only: [:show, :update, :destroy]

  # GET /gameplan_users
  # GET /gameplan_users.json
  def index
    @gameplan_users = GameplanUser.all
  end

  # GET /gameplan_users/1
  # GET /gameplan_users/1.json
  def show
  end

  # POST /gameplan_users
  # POST /gameplan_users.json
  def create
    @gameplan_user = GameplanUser.new(gameplan_user_params)

    if @gameplan_user.save
      render :show, status: :created, location: @gameplan_user
    else
      render json: @gameplan_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gameplan_users/1
  # PATCH/PUT /gameplan_users/1.json
  def update
    if @gameplan_user.update(gameplan_user_params)
      render :show, status: :ok, location: @gameplan_user
    else
      render json: @gameplan_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gameplan_users/1
  # DELETE /gameplan_users/1.json
  def destroy
    @gameplan_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameplan_user
      @gameplan_user = GameplanUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameplan_user_params
      params.require(:gameplan_user).permit(:gameplan_id, :user_id)
    end
end
