class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :favorites_users, through: :favorites, source: :item

  def already_favorited?(item)
    favorites.exists?(item_id: item.id)
  end

  with_options presence: true do
    validates :nickname
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])\w{6,12}\z/i, message: 'は数字と小文字を必ず1文字使ってください' }
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, massage: 'もう一度入力してください' }
  end
end
