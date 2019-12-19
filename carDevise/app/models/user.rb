class User < ApplicationRecord
  has_many :cars , dependent: :destroy 
  ### When I delete the USER all the his/her cars will deleted  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
