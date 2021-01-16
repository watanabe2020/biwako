class HikoneController < ApplicationController
  def index
    @items = Item.where(place_id: 11).order('created_at DESC')
  end
end
