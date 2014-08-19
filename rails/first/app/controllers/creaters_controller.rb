class CreatersController < ApplicationController
  def index
    @creaters = Creater.all
  end
  
  def new
  end

  def create
    @creater = Creater.new(params[:creater].permit(:name, :email))
 if @creater.save
   redirect_to creaters_path,:notice => "successfully submitted.."
 else
  render 'new'
 end
   
  end

  def show
    @creater = Creater.find(params[:id])
  end
  
  private
    def creater_params
      params.require(:creater).permit(:name, :email)
    end

  def signup
    @creater = Creater.find(params[:creater_id])

respond_to do |format|
format.html { post_url(@creater) }
format.js

end

end

end
