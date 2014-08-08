class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]
  before_action :confirm_logged_in
  before_action :find_season

  # GET /episodes
  def index
    @episodes = @season.episodes.sorted
  end

  # GET /episodes/1
  def show
  end

  # GET /episodes/new
  def new
    @episode = Episode.new
    @episode_count = Episode.count + 1
    @seasons = Season.order('position ASC')
  end

  # GET /episodes/1/edit
  def edit
    @seasons = Season.order('position ASC')
    @episode_count = Episode.count
  end

  # POST /episodes
  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      flash[:notice] = "Episode was successfully created."
      redirect_to(:action => 'index', :season_id => @season.id)
    else
      @seasons = Season.order('position ASC')
      @episode_count = Episode.count + 1
      render :new
    end
  end

  # PATCH/PUT /episodes/1
  def update
    if @episode.update(episode_params)
      flash[:notice] = "Episode was successfully updated."
      redirect_to(:action => 'index', :season_id => @season.id)
    else
      @episode_count = Episode.count
      @seasons = Season.order('position ASC')
      render :edit
    end
  end

  def delete
    @episode = Episode.find(params[:id])
  end

  # DELETE /episodes/1
  def destroy
    @episode.destroy
    flash[:notice] = "Episode was successfully destroyed."
    redirect_to(:action => 'index', :season_id => @season.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Episode.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def episode_params
      params.require(:episode).permit(:season_id, :name, :position, :visible, :content_type, :content, :description)
    end

    def find_season
      if params[:season_id]
        @season = Season.find(params[:season_id])
      end
    end
end
