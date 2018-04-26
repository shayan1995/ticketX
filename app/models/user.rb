class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders, class_name: 'Order'
  has_many :events, through: :orders
  #, class_name: "Event"
  has_many :hostevents, class_name: "Event"
  
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

end
