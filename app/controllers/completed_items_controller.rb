class CompletedItemsController < ApplicationController
  def destroy
    @item = CompletedItem.find(params[:id])
    Item.create!(name: @item.name, user_id: @item.user_id)
    @item.destroy
  end
end
