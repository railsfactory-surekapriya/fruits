class FruitsController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 def index
 @fruits = Fruit.all
 end

 def new
 @fruit = Fruit.new
 end 

 def show
 @fruit = Fruit.find(params[:id])
 end

 def create
 @fruit = Fruit.new(params[:fruit].permit(:name, :colour, :price))
 if @fruit.save
   redirect_to fruits_path,:notice => "successfully submitted.."
 else
  render 'new'
 end
 end

 def edit
 @fruit = Fruit.find(params[:id])
 end
 
 def update
 @fruit = Fruit.find(params[:id])
 
    if @fruit.update_attributes(params[:fruit].permit(:name, :colour, :price))
      redirect_to fruits_path, :notice => "Your fruit was updated."
    else
      render "edit"
    end
 end
def destroy
@fruit = Fruit.find(params[:id])
@fruit.destroy
redirect_to fruits_path
end

end
