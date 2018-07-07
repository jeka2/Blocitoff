class ItemsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @item = Item.new
  end

  def create
    @item_name = params[:item][:name]
    if current_user.items.create!(name: @item_name, user: current_user)
      flash[:notice] = "The item was created"
    else
      flash[:notice] = "The item could not be created"
    end
  end

  def destroy
    @item = Item.find(params[:id])
  end
end
