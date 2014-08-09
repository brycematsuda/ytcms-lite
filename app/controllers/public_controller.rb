class PublicController < ApplicationController
  
  layout 'public'
  before_action :setup_navigation
  def index
  end

  def show
    @season = Season.where(:permalink => params[:permalink], :visible => true).first
    if @season.nil?
      redirect_to('/404')
    end
  end

  private

    def setup_navigation
      @shows = Show.visible.sorted
    end
end
