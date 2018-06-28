class UsersController < ApplicationController
  def show
    @user_id = params[:id]
    @all_items = current_user.items
    p User.attribute_names
  end
end
