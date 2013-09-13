class Chapter < ActiveRecord::Base
  belongs_to  :course
  before_save :markdown_for_body_html
  
  
  
  def markdown_for_body_html
    #return true if not self.body_changed?
    self.body_html = MarkdownConverter.convert(self.body)
  rescue => e
  end
end
