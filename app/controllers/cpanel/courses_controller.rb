class Cpanel::CoursesController < ApplicationController
  layout "admin"
  def index
    @courses = Course.paginate :page=>params[:page],:order=>'created_at desc', :per_page =>10
  end
  
end
