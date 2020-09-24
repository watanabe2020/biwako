class TakasimaController < ApplicationController
  def index
    @items = Item.where(place_id: 9)
  end
end
