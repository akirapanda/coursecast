class Chatper < ActiveRecord::Base
  belongs_to :course
  
  
  before_save :markdown_for_body_html
  
  
  
  def markdown_for_body_html
    #return true if not self.body_changed?
    self.content = MarkdownConverter.convert(self.content)
    Rails.logger.info("***********markdown connent is #{self.content}")
  rescue => e
    Rails.logger.error("markdown_for_body_html failed: #{e}")
  end    
  
end
