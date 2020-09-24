class Lead < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :comments
  belongs_to_active_hash :category

  validates :category_id, numericality: { other_than: 1 } 
end
