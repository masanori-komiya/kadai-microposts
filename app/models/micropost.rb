class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :users
  has_many :users_like_micropost, through: :users, source: :user
end