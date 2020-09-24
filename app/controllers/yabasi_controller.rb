class YabasiController < ApplicationController
  def index
    @items = Item.where(place_id: 6)
  end
end
