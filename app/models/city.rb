class City < ApplicationRecord
  validates :name, presence: true
  
  scope :by_name, -> (name) { where(name: name) }
end
