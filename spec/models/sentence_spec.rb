require 'rails_helper'

describe Sentence do
  it { should validate_presence_of :user_name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :story_id }
  it { should validate_presence_of :image_url }
  it { should belong_to :story }
end
