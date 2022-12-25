class Status < ApplicationRecord
  validates :description, presence: true

  scope :search, -> (params) { where("description like ?", "%#{params}%") }
end
