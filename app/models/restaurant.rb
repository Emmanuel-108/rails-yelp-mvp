class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian] #=> similar to ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # enum category: { chinese: 0, italian: 1, japanese: 2, french: 3, belgian: 4 } ==> the category in the DB has to be an integer
end
