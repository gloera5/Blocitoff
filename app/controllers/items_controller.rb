class ItemsController < ApplicationController
  def create
    @item = Item.new(...)
    @item.save
    redirect to: @item.user
  end
end
