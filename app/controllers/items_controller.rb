class ItemsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @item = Item.new
    respond_to do |format|
      format.json {render layout: false}
    end
  end

  def create
    @item_name = params[:item][:name]
    if current_user.items.create!(name: @item_name, user: current_user)
      flash[:notice] = "The item was created"
    else
      flash[:notice] = "The item could not be created"
    end
    redirect_to root_path
  end

  def destroy
    @item = Item.find(params[:id])
  end
end
