class Cpanel::ChaptersController < ApplicationController
  layout "admin"
  
  def index
    @chapters = Chapter.paginate :page=>params[:page],:per_page=>10    
  end
end
