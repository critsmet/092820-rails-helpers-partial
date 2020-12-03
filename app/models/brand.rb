class Brand < ApplicationRecord
  has_many :kombuchas

  accepts_nested_attributes_for :kombuchas
end
