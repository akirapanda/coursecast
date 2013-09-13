require 'test_helper'

class CoursesCellTest < Cell::TestCase
  test "index_section" do
    invoke :index_section
    assert_select "p"
  end
  

end
