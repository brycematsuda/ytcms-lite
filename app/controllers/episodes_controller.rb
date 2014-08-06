class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :edit, :update, :destroy]

  # GET /episodes
  def index
    @episodes = Episode.all
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
      redirect_to @episode, notice: 'Episode was successfully created.'
    else
      @seasons = Season.order('position ASC')
      @episode_count = Episode.count + 1
      render :new
    end
  end

  # PATCH/PUT /episodes/1
  def update
    if @episode.update(episode_params)
      redirect_to @episode, notice: 'Episode was successfully updated.'
    else
      @episode_count = Episode.count
      @seasons = Season.order('position ASC')
      render :edit
    end
  end

  # DELETE /episodes/1
  def destroy
    @episode.destroy
    redirect_to episodes_url, notice: 'Episode was successfully destroyed.'
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
end
