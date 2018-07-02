class CreateCompletedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_items do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
