class PostsController < ApplicationController
  def new
    @post = Post.new
    @like = current_user.likes.where(post_id: @post.id)

  end

  def show
    @post = Post.find(params[:id])
    @like = current_user.likes.where(post_id: @post.id)

  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @like = current_user.likes.where(post_id: @post.id)


    if @post.valid?
      @post.save
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def post_params
      params.require(:post).permit(:body)
    end
end
