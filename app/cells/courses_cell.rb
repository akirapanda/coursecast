class CoursesCell < Cell::Rails

  def index_section
    @courses=Course.joins(:chapters).
    select("courses.*, count(chapters.id) as chapters_count").
    group('courses.id').
    order('chapters_count desc').limit(3)
    render
  end

end
