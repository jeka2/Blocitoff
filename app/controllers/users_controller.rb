class UsersController < ApplicationController
  def show
    @user_id = params[:id] || current_user.id
    @items = Item.where(user_id: @user_id)

    respond_to do |format|
      format.html
      format.js {render layout: false}
    end
  end
end
