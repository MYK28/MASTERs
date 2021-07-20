class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :checks, dependent: :destroy
  has_many :comments, dependent: :destroy

  #既にチェックしているかどうか
  def already_checked?(information)
    self.checks.exists?(information_id: information.id)
  end

end
