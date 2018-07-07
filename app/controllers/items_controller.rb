class ItemsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @item = Item.new
  end

  def create
    @item = Item.new(name: params[:item][:name], user: current_user)
    if @item.save
      flash[:notice] = "The item was created"
    else
      flash[:notice] = "The item could not be created"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "The item was deleted"
    else
      flash[:notice] = "The item could not be deleted"
    end
  end
end
