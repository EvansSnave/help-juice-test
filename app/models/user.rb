class User < ApplicationRecord
  has_many :searches, class_name: 'Search', foreign_key: :search_id

  validates :ip_address, presence: true
end
