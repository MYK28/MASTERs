class Check < ApplicationRecord
  belongs_to :staff
  belongs_to :information

  validates_uniqueness_of :information_id, scope: :staff_id
end
