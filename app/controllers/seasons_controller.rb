class SeasonsController < ApplicationController
  before_action :set_season, only: [:show, :edit, :update, :destroy]
  before_action :confirm_logged_in
  before_action :find_show

  # GET /seasons
  def index
    @seasons = @show.seasons.sorted
  end

  # GET /seasons/1
  def show
  end

  # GET /seasons/new
  def new
    @season = Season.new({:show_id => @show.id})
    @season_count = @show.seasons.size + 1
    @shows = Show.order('position ASC')
  end

  # GET /seasons/1/edit
  def edit
    @season_count = @show.seasons.size
    @shows = Show.order('position ASC')
  end

  # POST /seasons
  def create
    @season = Season.new(season_params)

    if @season.save
      flash[:notice] = "\"" + @show.name + " - " + @season.name + "\" was successfully created."
      redirect_to(:action => 'index', :show_id => @show.id)
    else
      @shows = Show.order('position ASC')
      @season_count = @show.seasons.size + 1
      render :new
    end
  end

  # PATCH/PUT /seasons/1
  def update
    if @season.update(season_params)
      flash[:notice] = "\"" + @show.name + " - " + @season.name + "\" was successfully updated."
      redirect_to(:action => 'index', :show_id => @show.id)
    else
      @shows = Show.order('position ASC')
      @season_count = @show.seasons.size
      render :edit
    end
  end

  def delete
    @season = Season.find(params[:id])
  end

  # DELETE /seasons/1
  def destroy
      @season.destroy
      flash[:notice] = "\"" + @show.name + " - " + @season.name + "\" was successfully destroyed."
      redirect_to(:action => 'index', :show_id => @show.id)
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

    def find_show
      if params[:show_id]
        @show = Show.find(params[:show_id])
      end
    end
end
