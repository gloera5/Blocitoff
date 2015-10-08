class ItemsController < ApplicationController
  def create
    @item = current_user.items.build(params.require(:item).permit(:name))
    @item.save
    redirect_to @item.user
  end
  
   def destroy
     @item = Item.find(params[:id])
     
     if @item.destroy
       flash[:notice] = "\"#{@item.name}\" was deleted successfully."
       redirect_to @item.user
     else
       flash[:error] = "There was an error deleting the item."
     end
   end
end
