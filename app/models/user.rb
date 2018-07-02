class User < ApplicationRecord
  has_many :items
  has_many :completed_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
