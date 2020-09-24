class OomimaikoController < ApplicationController
  def index
    @items = Item.where(place_id: 8)
  end
end
