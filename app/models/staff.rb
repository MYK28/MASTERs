class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :checks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  attachment :profile_image

  #退会したスタッフを弾く
  def active_for_authentication?
    super && (self.is_deleted == false)
  end

  #既にチェックしているかどうか
  def already_checked?(information)
    self.checks.exists?(information_id: information.id)
  end

  def self.search(search) #self.はstaffを意味する
     if search
       where(['last_name LIKE ? OR first_name LIKE ?', "%#{search}%", "%#{search}%"]) #検索とlast_nameとfirst_nameの部分一致を表示。
     else
       all #全て表示させる
     end
  end
end
