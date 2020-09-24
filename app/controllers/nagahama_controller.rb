class NagahamaController < ApplicationController
  def index
    @items = Item.where(place_id: 12)
  end
end
