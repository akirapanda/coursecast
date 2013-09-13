Course.transaction do
  (1..100).each do |i|
    Chapter.create(:title=>"批量测试章节 #{i}",:body=>"none",:body_html=>"none",:course_id=>1)
  end
end