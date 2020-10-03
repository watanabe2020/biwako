class RankController < ApplicationController
  def index
    @items = Item.all.limit(10).sort { |a, b| b.favorites_items.count <=> a.favorites_items.count }
  end
end
