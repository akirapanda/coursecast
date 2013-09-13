
class Course < ActiveRecord::Base
  has_many :chapters,:counter_cache=>true
  validates :name, :length=>{:in => 3..20,:message=>"课程名称长度请在3~20个汉字之间"}
  
  mount_uploader :cover,PhotoUploader
end
