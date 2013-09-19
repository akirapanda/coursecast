Course.transaction do
  (1..20).each do |i|
    Course.create(:name=>"批量测试案例 #{i}",:author=>"System",:description=>"none",:content=>"<h3>test content</h3>")
  end
end