class Cpanel::HomeController < ApplicationController
  layout "admin"
  def index
    @chapters = Chapter.paginate :page=>params[:page],:per_page=>8    
  end
end
