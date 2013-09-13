class AddContentHtmlIntoChapter < ActiveRecord::Migration
  def change
    add_column :chatpers , :content_html,:string
  end
end
