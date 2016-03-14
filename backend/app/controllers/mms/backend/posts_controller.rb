require_dependency "mms/application_controller"

module Mms
  class Backend::PostsController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_backend_post, only: [:show, :edit, :update, :destroy]

    # GET /backend/posts
    def index
      @backend_posts = Backend::Post.all
    end

    # GET /backend/posts/1
    def show
    end

    # GET /backend/posts/new
    def new
      @backend_post = Backend::Post.new
    end

    # GET /backend/posts/1/edit
    def edit
    end

    # POST /backend/posts
    def create
      @backend_post = Backend::Post.new(backend_post_params)

      if @backend_post.save
        redirect_to @backend_post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /backend/posts/1
    def update
      if @backend_post.update(backend_post_params)
        redirect_to @backend_post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /backend/posts/1
    def destroy
      @backend_post.destroy
      redirect_to backend_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_backend_post
        @backend_post = Backend::Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def backend_post_params
        params.require(:backend_post).permit(:title)
      end
  end
end
