class Cat < ActiveRecord::Base
	validates :gender, presence: true
end
