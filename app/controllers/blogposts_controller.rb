class BlogpostsController < ApplicationController
  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to blogposts_path
  end

  def update
    @blogpost = Blogpost.find(params[:id])
    if @blogpost.update_attributes(params.require(:blogpost).permit(:name, :city, :state, :title, :content))
      redirect_to blogposts_path
    else
      render 'edit'
    end
  end

  def create
    @blogpost = Blogpost.new(params.require(:blogpost).permit(:name, :city, :state, :title, :content))
    if @blogpost.save
      redirect_to blogposts_path
    else
      render 'new'
    end
  end

  def index
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
  end

  def new_comment
    
  end
end
