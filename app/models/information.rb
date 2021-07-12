class Information < ApplicationRecord
  belongs_to :admin
  attachment :image
end
