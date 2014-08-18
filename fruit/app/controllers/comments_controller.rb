class CommentsController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @fruit = Fruit.find(params[:fruit_id])
    @comment = @fruit.comments.create(params[:comment].permit(:commenter,:body))
    redirect_to fruit_path(@fruit)
  end
 def destroy
    @fruit = Fruit.find(params[:fruit_id])
    @comment = @fruit.comments.find(params[:id])
    @comment.destroy
    redirect_to fruit_path(@fruit)
  end
end
