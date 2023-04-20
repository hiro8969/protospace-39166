class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # dependmentオプションでcommentも削除するよう紐付けた
  has_many :prototypes
  has_many :comments, dependent: :destroy

  validates :name, :occupation, :profile, :position, presence: true
end
