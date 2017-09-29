class StaticPagesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:manage]

  def home
    # @posts = Post.order(created_at: :desc).limit(10)
    # @setting = Setting.first
    # @services = Service.all.order(:sort)
  end

  def manage

  end

end
