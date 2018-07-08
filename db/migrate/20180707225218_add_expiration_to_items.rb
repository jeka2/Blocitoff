class AddExpirationToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :expires_at, :float
  end
end
