class BlogpostsController < ApplicationController

  before_filter :authorize, :except => [:index, :show, :new_comment]
  
  def index
    @blogposts = Blogpost.all 
    # @blogposts = Blogpost.search(params[:search])
  end
  
  def new
    @blogpost = Blogpost.new
  end
  
  def create
    @blogpost = Blogpost.new(params.require(:blogpost).permit(:name, :city, :state, :title, :content))
    if @blogpost.save
      redirect_to blogposts_path
    else
      render 'new'
    end
  end

  def show
    @blogpost = Blogpost.find(params[:id])
    @comment = Comment.new
  end

  def new_comment
    @id = params[:blogpost_id]
    @blogpost = Blogpost.find(@id)
    @blogpost.comments << Comment.new(params.require(:comment).permit(:name, :comment))
    if @blogpost.save
      redirect_to blogposts_path
    end
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

  def logged_in
  end

end
