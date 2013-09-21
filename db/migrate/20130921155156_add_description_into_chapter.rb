class AddDescriptionIntoChapter < ActiveRecord::Migration
  def self.up
    add_column :chapters, :description, :string
    
  end
  
  def self.dowm
    remove_column :chapters , :description
  end
  
end
