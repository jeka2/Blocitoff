class UsersController < ApplicationController
  def show
    @user_id = params[:id] || current_user.id
    @items = Item.where(user_id: @user_id)
    p @items[1]
  end
end
