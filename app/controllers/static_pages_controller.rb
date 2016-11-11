class StaticPagesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:manage]

  def home
    @posts = Post.order(created_at: :desc)
  end

  def manage

  end

end
