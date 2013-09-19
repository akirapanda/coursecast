User.transaction do
  User.create(:email=>'p.chenliang@gmail.com',:encryped_password=>'$2a$10$xpDlvaia6UEw2mcHOHy5FOY3V.9vzufF8AjVhsAwex0fjPb/DQwgK')
end