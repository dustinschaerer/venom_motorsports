class StaticPagesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:manage]

  def home
    posts = Post.order(created_at: :desc).limit(10)
    if !posts.nil?
      @posts = posts
    end
    @setting = Setting.first
    services = Service.all.order(:sort)
    if !services.nil?
      @services = services
    end
  end

  def manage

  end

end
