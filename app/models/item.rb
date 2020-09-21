class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :place
  belongs_to_active_hash :weather
  belongs_to_active_hash :wind
  belongs_to_active_hash :water_temperature
  belongs_to_active_hash :wave
  belongs_to_active_hash :water_quality
  belongs_to_active_hash :aquatic_plant
  belongs_to_active_hash :bait

  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :image
    # validates :comment, length:        { maximum: 40 }
    validates :place_id, numericality: { other_than: 1, message: 'は空白以外を選択してください' }
    validates :weather_id, numericality: { other_than: 1, message: 'は空白以外を選択してください' }
  end
end
