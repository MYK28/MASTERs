class Comment < ApplicationRecord
  belongs_to :staff, optional: true
  belongs_to :admin, optional: true
  belongs_to :information

  has_many :replies, dependent: :destroy

  #バリデーション
  validates :comment, presence: true
end
