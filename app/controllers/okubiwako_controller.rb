class OkubiwakoController < ApplicationController
  def index
    @items = Item.where(place_id: 13)
  end
end
