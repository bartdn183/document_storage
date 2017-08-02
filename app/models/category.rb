class Category < ApplicationRecord

	has_many :documents, dependent: :destroy

	validates :name, presence: true, uniqueness: true
end
