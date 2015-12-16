class Cat < ActiveRecord::Base
	has_many :todos, dependent: :destroy
	validates :gender, presence: true
end
