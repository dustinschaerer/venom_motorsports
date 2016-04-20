class StaticPagesController < ApplicationController

  def home
    @posts = Post.order(created_at: :desc)

  end

  def engine_building

  end

  def parts_list

  end

  def contact

  end

  def rsr_engine_build

  end
end
