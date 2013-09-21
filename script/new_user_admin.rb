User.transaction do
  User.create(:email=>'panchenliang@gmail.com',:encrypted_password=>'$2a$10$xpDlvaia6UEw2mcHOHy5FOY3V.9vzufF8AjVhsAwex0fjPb/DQwgK',:confirmed_at=>"2013-09-19 06:47:35")
end