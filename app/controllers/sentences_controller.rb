class SentencesController < ApplicationController
  def new
    @rss = Urss.at("http://www.flickr.com/services/feeds/photos_public.gne?format=rss_200");
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end
private
  def sentence_params
    params.require(:sentence).permit(:user_name, :content, :image_url, :story_id)
  end
end
