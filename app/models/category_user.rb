class CategoryUser < ApplicationRecord

	belongs_to :category
	belongs_to :user

	validates_uniqueness_of :user_id, :scope => :category_id

end
