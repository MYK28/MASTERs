class Information < ApplicationRecord
  belongs_to :admin
  has_many :checks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  attachment :image

  def checked_by?(staff)
    checks.where(staff_id: staff.id).exists?
  end

  #既にブックマークしているかどうか
  def bookmarked_by?(staff)
    bookmarks.where(staff_id: staff.id).exists?
  end
end
