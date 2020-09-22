class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      
      t.references   :user, foreign_key: true
      t.string       :comment                   
      t.string       :place_id,                  null: false
      t.integer      :weather_id,                null: false
      t.integer      :wind_id                   
      t.integer      :wave_id                   
      t.integer      :water_quality_id          
      t.integer      :water_temperature_id      
      t.integer      :aquatic_plant_id         
      t.integer      :bait_id                   
      t.timestamps
    end
  end
end
