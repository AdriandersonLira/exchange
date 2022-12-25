class Service < ApplicationRecord
  belongs_to :user
  belongs_to :status

  validates :description, presence: true

  scope :search, -> (params) { where("description like ?", "%#{params}%") }
end
