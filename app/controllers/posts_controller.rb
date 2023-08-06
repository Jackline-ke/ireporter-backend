class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
    render json: @posts, status: :ok
  end

  # GET /posts/{id}
  def show
    @post = Post.find_by(id: params[:id])
    if @post
      render json: @post, status: :ok
    else
      render json: { error: "Post not found" }, status: :not_found
    end
  end

  # POST /posts
  def create
    if current_user.nil?
      render json: { error: "You must be logged in to add a new post" }, status: :unauthorized
      return
    end

    @post = current_user.posts.build(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

 # GET /posts/{id}/edit
 def edit
  @post = Post.find_by(id: params[:id])
  if @post
    render json: @post, status: :ok
  else
    render json: { error: "Post not found" }, status: :not_found
  end
end

# PATCH /posts/{id}
def update
  @post = Post.find_by(id: params[:id])
  if @post
    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  else
    render json: { error: "Post not found" }, status: :not_found
  end
end

# DELETE /posts/{id}
def destroy
  @post = Post.find_by(id: params[:id])
  if @post
    @post.update(deleted_at: Time.now)
    head :no_content
  else
    render json: { error: "Post not found" }, status: :not_found
  end
end

private

def post_params
  params.require(:post).permit(:title, :body)
end
end
