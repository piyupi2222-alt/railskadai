class PostsController < ApplicationController
  def index
    @posts=Post.all
    @date1 = Date.current.strftime('%Y/%m/%d')
    @count =Post.count
   
  end
  def new
    @post=Post.new
  end
  def create
    @post=Post.new(params.require(:post).permit(:title,:start,:finish,:allday,:note))
    if @post.save
      flash[:notice] = "スケジュールを新規追加しました"
      redirect_to:posts
    else render "new"
    end
  end
  def show
    @post=Post.find(params[:id])
  end
  def edit
    @post=Post.find(params[:id])
    
  end
  def update
    @post=Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title,:start,:finish,:allday,:note))
  
      flash[:notice] = "スケジュールの更新をしました"
      redirect_to:posts
    else
      render "edit"
    end
  end
  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    flash[:notice]="予定を削除しました"
    redirect_to:posts
  end
end
‎‎
