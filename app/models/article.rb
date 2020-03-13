class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: {minimum: 5}, length: {maximum: 50}
	validates_associated :comments

end
