class Prototype < ApplicationRecord
  #dependmentオプションでcommentも削除するよう紐付けた
  validates :title, :catch_copy, :concept, :image, presence: true
  
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image
end
