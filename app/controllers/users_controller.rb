class UsersController < ApplicationController
  def show
    @all_items = current_user.items
  end
end
