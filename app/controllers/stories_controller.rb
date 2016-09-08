class StoriesController < ApplicationController
  def index
    @rss = Urss.at("http://www.flickr.com/services/feeds/photos_public.gne?format=rss_200"); true
    @stories = Story.all
    render :index
  end

  def show
    @story = Story.find(params[:id])
    render :show
  end

  def new
    @story = Story.new
    render :new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

private
  def story_params
    params.require(:story).permit(:name)
  end
end
