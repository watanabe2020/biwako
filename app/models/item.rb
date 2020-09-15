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
end   

