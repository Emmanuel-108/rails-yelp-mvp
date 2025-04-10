class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  enum category: { chinese: 0, italian: 1, japanese: 2, french: 3, belgian: 4 }
end
