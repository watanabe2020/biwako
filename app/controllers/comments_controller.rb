class CommentsController < ApplicationController
  def index
    @comments = Comment.find(comment_params)
  end

  def create
    @comments = Comment.create(comment_params)
    if @comments.save
      redirect_to "/items/#{@comments.item.id}"
    else
      redirect_to "/items/#{@comments.item.id}"
    end
  end

  def destroy
    @comments = Comment.find(params[:id])
    if @comments.destroy
      redirect_to "/items/#{@comments.item.id}"
    else
      render 'show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
