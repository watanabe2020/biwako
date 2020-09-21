class NannkoController < ApplicationController
  def index
    @items = Item.all
  end
end
