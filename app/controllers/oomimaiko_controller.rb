class OomimaikoController < ApplicationController
  def index
    @items = Item.where(place_id: 8).order('created_at DESC')
  end
end
