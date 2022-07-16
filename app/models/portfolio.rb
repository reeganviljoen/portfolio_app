class Portfolio < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail

  has_many :sections, dependent: :destroy
end
