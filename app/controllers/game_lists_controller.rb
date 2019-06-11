class GameListsController < OpenReadController
  before_action :set_game_list, only: [:show, :update, :destroy]

  # GET /game_lists
  def index
    @game_lists = GameList.all

    render json: @game_lists
  end

  # GET /game_lists/1
  def show
    render json: @game_list
  end

  # POST /game_lists
  def create
    @game_list = current_user.game_lists.build(game_list_params)

    if @game_list.save
      render json: @game_list, status: :created, location: @game_list
    else
      render json: @game_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_lists/1
  def update
    if @game_list.update(game_list_params)
      render json: @game_list
    else
      render json: @game_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_lists/1
  def destroy
    @game_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_list
      @game_list = current_user.game_lists.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_list_params
      params.require(:game_list).permit(:title, :system, :player_count, :sessions_count, :description, :start_date)
    end
end
