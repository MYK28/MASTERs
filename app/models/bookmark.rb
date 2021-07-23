class Bookmark < ApplicationRecord
  belongs_to :staff
  belongs_to :information

  validates :staff_id, uniqueness: {scope: :information_id}
end
