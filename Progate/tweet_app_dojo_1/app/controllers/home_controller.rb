class HomeController < ApplicationController
  def top
  end
  
  def about
  end
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
end
