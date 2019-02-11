class Api::V1::CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    render json: @comment, :include => [:user, :sighting]
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    render json: @comment, :include => [:user, :sighting]
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :photo, :user_id, :sighting_id)
  end

end
