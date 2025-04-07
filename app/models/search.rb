class Search < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :search_id

  validates :search_content, presence: true, length: { maximum: 250 }
end
