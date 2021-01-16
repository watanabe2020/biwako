class KatataController < ApplicationController
  def index
    @items = Item.where(place_id: 4).order('created_at DESC')
  end
end
