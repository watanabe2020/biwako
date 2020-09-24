class SetaController < ApplicationController
  def index
    @items = Item.where(place_id: 5)
  end
end
