class KihamaController < ApplicationController
  def index
    @items = Item.where(place_id: 7).order('created_at DESC')
  end
end
