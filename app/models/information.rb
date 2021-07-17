class Information < ApplicationRecord
  belongs_to :admin
  has_many :checks, dependent: :destroy

  attachment :image

  def checked_by?(staff)
    checks.where(staff_id: staff.id).exists?
  end
end
