class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }, uniqueness: true
  validates :content, presence: true, length: { maximum: 500 }
end
