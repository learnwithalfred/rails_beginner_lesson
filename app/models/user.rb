class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


  validates :email, presence: true, uniqueness: true,length: { minimum: 6, maximum: 255 }
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
