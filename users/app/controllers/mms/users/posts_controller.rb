require_dependency "mms/application_controller"

module Mms
  class Users::PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_users_post, only: [:show, :edit, :update, :destroy]
    # GET /users/posts
    def index
      @users_posts = Users::Post.all
    end

    # GET /users/posts/1
    def show
    end

    # GET /users/posts/new
    def new
      @users_post = Users::Post.new
    end

    # GET /users/posts/1/edit
    def edit
    end

    # POST /users/posts
    def create
      @users_post = Users::Post.new(users_post_params)

      if @users_post.save
        redirect_to @users_post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /users/posts/1
    def update
      if @users_post.update(users_post_params)
        redirect_to @users_post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /users/posts/1
    def destroy
      @users_post.destroy
      redirect_to users_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_users_post
        @users_post = Users::Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def users_post_params
        params.require(:users_post).permit(:title)
      end
  end
end
