class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_header_categories

  def set_header_categories
    @category_custom_builds = Post.where(category_id: 1)
    @category_barn_finds = Post.where(category_id: 2)
    @category_engine_builds = Post.where(category_id: 3)
  end

end
