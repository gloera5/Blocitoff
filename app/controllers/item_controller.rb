class ItemController < ApplicationController
  def create
    @item = Item.new
  end
end
