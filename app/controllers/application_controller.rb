class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_item, only: [:index, :search]

  def index
    @items = Item.all  # 全商品の情報を取得
  end

  def search
    @results = @p.result.includes(:item) # 検索条件にマッチした商品の情報を取得
    binding.pry
  end

  private

  def search_item
    @p = Item.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :password, :password_confirmation])
  end
end
