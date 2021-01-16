class SetaController < ApplicationController
  def index
    @items = Item.where(place_id: 5).order('created_at DESC')
  end
end
