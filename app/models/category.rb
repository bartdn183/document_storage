class Category < ApplicationRecord

	has_many :documents, dependent: :destroy

	has_many :category_users, dependent: :destroy
  	has_many :users, through: :category_users

	validates :name, presence: true, uniqueness: true
end
