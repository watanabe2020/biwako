class ItemsController < ApplicationController

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(user_params)
    binding.pry
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
    if @item.update(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end


  def search
    @items = Item.search(params[:keyword])
  end

    private
    
  def user_params
    params.require(:item).permit(:image,:comment,:place_id,:weather_id,:wind_id,:water_temperature_id,:wave_id,:water_quality_id,:aquatic_plant_id,:bait_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end

  
end


# imgの許可