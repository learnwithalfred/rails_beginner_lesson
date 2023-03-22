class Course < ApplicationRecord
  belongs_to :language
  belongs_to :category
  has_many :sections

  has_many :lectures, through: :sections
end
