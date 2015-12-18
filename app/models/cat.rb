class Cat < ActiveRecord::Base
	has_secure_password
	has_many :todos, dependent: :destroy
	validates :gender, presence: true
end
