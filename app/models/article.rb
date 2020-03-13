class Validator < ActiveModel::Validator
	def validate(record)
		if record.title == "Evil"
			record.errors[:base] << "You are too evil for this world, sorry"
		end
	end
end




class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
						length: {in: 5..50}
	validates_associated :comments
	validates :title, :text, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
    validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :title, uniqueness: {case_sensivity: false}
    validates_with Validator
end


