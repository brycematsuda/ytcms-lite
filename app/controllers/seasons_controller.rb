class SeasonsController < ApplicationController
  before_action :set_season, only: [:show, :edit, :update, :destroy]
  before_action :confirm_logged_in

  # GET /seasons
  def index
    @seasons = Season.all
  end

  # GET /seasons/1
  def show
  end

  # GET /seasons/new
  def new
    @season = Season.new
    @season_count = Season.count + 1
    @shows = Show.order('position ASC')
  end

  # GET /seasons/1/edit
  def edit
    @season_count = Season.count
    @shows = Show.order('position ASC')
  end

  # POST /seasons
  def create
    @season = Season.new(season_params)

    if @season.save
      redirect_to @season, notice: 'Season was successfully created.'
    else
      @shows = Show.order('position ASC')
      @season_count = Season.count + 1
      render :new
    end
  end

  # PATCH/PUT /seasons/1
  def update
    if @season.update(season_params)
      redirect_to @season, notice: 'Season was successfully updated.'
    else
      @shows = Show.order('position ASC')
      @season_count = Season.count
      render :edit
    end
  end

  # DELETE /seasons/1
  def destroy
    @season.destroy
    redirect_to seasons_url, notice: 'Season was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season
      @season = Season.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def season_params
      params.require(:season).permit(:show_id, :name, :position, :permalink, :visible)
    end
end
