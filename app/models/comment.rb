class Comment < ApplicationRecord
  belongs_to :staff
  belongs_to :admin
  belongs_to :information

  #バリデーション
  validates :comment, presence: true
end
