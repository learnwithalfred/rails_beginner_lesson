class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum:3, maximum:255}
    validates :description, presence: true, length: {minimum:3}

  belongs_to :language
  belongs_to :category
  has_many :sections

  has_many :lectures, through: :sections
end
