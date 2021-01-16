class OkubiwakoController < ApplicationController
  def index
    @items = Item.where(place_id: 13).order('created_at DESC')
  end
end
