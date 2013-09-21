# coding: utf-8
class Cpanel::ApplicationController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :require_admin

  def require_admin
    if not current_user.admin?
      render_404
    end
  end
  
end