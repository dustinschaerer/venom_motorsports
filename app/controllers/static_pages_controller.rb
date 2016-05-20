class StaticPagesController < ApplicationController

  def home
    @posts = Post.order(created_at: :desc)
  end

  def contact

  end

end
