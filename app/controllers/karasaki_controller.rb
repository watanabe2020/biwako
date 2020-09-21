class KarasakiController < ApplicationController
  def index
    @items = Item.where(place_id: 3)
  end
end
