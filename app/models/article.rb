class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }, uniqueness: true
  validates :content, presence: true, length: { maximum: 500 }

  def self.search_by_title(title)
    if title.present?
      where("title ILIKE ?", "%#{title}%")
    else
      all
    end
  end
end
