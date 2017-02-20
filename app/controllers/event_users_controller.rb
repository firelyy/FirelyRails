class EventUsersController < ApplicationController
  before_action :set_event_user, only: [:show, :update, :destroy]

  # GET /event_users
  # GET /event_users.json
  def index
    @event_users = EventUser.all
  end

  # GET /event_users/1
  # GET /event_users/1.json
  def show
  end

  # POST /event_users
  # POST /event_users.json
  def create
    @event_user = EventUser.new(event_user_params)

    if @event_user.save
      render :show, status: :created, location: @event_user
    else
      render json: @event_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_users/1
  # PATCH/PUT /event_users/1.json
  def update
    if @event_user.update(event_user_params)
      render :show, status: :ok, location: @event_user
    else
      render json: @event_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_users/1
  # DELETE /event_users/1.json
  def destroy
    @event_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_user
      @event_user = EventUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_user_params
      params.require(:event_user).permit(:event_id, :user_id)
    end
end
