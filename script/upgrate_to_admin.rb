User.transaction do
  user=User.find(1)
  user.admin=true
  user.save
end
