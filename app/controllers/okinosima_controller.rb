class OkinosimaController < ApplicationController
  def index
    @items = Item.where(place_id: 10)
  end
end
