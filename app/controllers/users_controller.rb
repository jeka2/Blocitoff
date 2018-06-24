class UsersController < ApplicationController
  def show
    @user = current_user
    @all_items = Item.all
  end
end
