class ItemsController < ApplicationController
  def create
    @item = Item.new
    redirect_to @item.user
  end
end
