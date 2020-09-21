class KatataController < ApplicationController
  def index
    @items = Item.where(place_id: 4)
  end
end
