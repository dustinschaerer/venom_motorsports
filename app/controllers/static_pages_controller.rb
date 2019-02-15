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
    @footer = Footer.first
  end

  def manage

  end

  def about
    setting = Setting.find(1)
    @about_page_title = setting.about_page_title
    @about_page_text = setting.about_page_text
  end

  def shop
    setting = Setting.find(1)
    @shop_page_title = setting.shop_page_title
    @shop_page_text = setting.shop_page_text
    @products = Product.all
  end

end
