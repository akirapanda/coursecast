class AddVideoIntoChapter < ActiveRecord::Migration
  def self.up
    add_column :chapters, :video_url, :string
    add_column :chapters, :download_url, :string
    add_column :chapters, :duration, :integer
    add_column :chapters, :publish,:boolean
  end
  
  def self.down
    remove_column :chapters , :video_url
    remove_column :chapters , :download_url
    remove_column :chapters , :duration
    remove_column :chapters , :publish
  end
end
