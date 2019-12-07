class Word < ApplicationRecord

  validates :name,  presence: true
  validates :result,  presence: true
  validates :image_url, presence: true
end
