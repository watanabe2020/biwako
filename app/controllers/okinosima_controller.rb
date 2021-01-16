class OkinosimaController < ApplicationController
  def index
    @items = Item.where(place_id: 10).order('created_at DESC')
  end
end
