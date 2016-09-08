class Sentence < ActiveRecord::Base
  belongs_to :story
  validates :user_name, :presence => true
  validates :content, :presence => true
  validates :image_url, :presence => true
  validates :story_id, :presence => true
end
