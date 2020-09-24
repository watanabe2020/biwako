class KihamaController < ApplicationController
  def index
    @items = Item.where(place_id: 7)
  end
end
