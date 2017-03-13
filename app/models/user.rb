class User < ApplicationRecord
  has_many :courses
  
    validates :title, presence: true
    validates :description, presence: true
    validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
