class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      #else実行エラー修正完了@prototype = Prototype.find(params[:id])から以下に変更
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render 'prototypes/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
