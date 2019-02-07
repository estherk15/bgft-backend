class Api::V1::CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    render json: @comment, :include => [:user, :sightings]
  end

  def update
    @comment = Comment.find(comment[:id])
    @comment.update(comment_params)
    render json: @comment, :include => [:user, :sightings]
  end

  def destroy
    @comment = Comment.find(comment[:id])
    @comment.delete
    render json: {message: "Successfully deleted"}
  end

  private

  def comment_params
    params.permit(:body, :photo, :user_id, :sighting_id)
  end

end
