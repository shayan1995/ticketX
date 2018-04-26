class Event < ApplicationRecord
	belongs_to :user
	has_many :orders, class_name: 'Order'
	has_many :users, through: :orders

end
