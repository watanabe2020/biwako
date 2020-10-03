class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @items = Item.all.limit(3).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(user_params)
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
    @items = Item.all.order('created_at DESC')
    @comment = Comment.new
    @comments = @item.comments.includes(:item)
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

  def my
    # @item = Item.find(params[:user_id])
    @items = Item.where(user_id: current_user.id)
  end

  # def search
  #   @items = Item.search(params[:keyword])
  # end

  # def search
  #   @results = @p.result.includes(:items) # 検索条件にマッチした商品の情報を取得
  # end

  private

  # def search_item
  #   @p = Item.ransack(params[:q]) # 検索オブジェクトを生成
  # end

  def user_params
    params.require(:item).permit(:image, :comment, :place_id, :weather_id, :wind_id, :water_temperature_id, :wave_id, :water_quality_id, :aquatic_plant_id, :bait_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end
end
