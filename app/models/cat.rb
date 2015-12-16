class Cat < ActiveRecord::Base
	has_many :todos
	validates :gender, presence: true
end
