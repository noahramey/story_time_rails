class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.string :user_name
      t.string :content
      t.integer :story_id
      t.string :image_url

      t.timestamps
    end
  end
end
