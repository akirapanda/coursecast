class Course < ActiveRecord::Base
  validates :name, :length=>{:in => 3..20,:message=>"课程名称长度请在3~20个汉字之间"}
end
