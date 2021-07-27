class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
    end

    def new 
        @new_post = Post.new
        @all_posts = Post.order(created_at: :desc).all
    end

    def create
        @new_post = Post.new(post_params)
        if @new_post.save
            redirect_to '/new'
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
