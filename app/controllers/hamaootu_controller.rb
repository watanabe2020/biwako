class HamaootuController < ApplicationController
  def index
    @items = Item.where(place_id: 2)
  end
end
