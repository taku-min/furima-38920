class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:index, :create]

  # def index
  #   if current_user.id != @item.user_id && @item.order == nil
  #      @order_form = OrderForm.new
  #   else
  #     redirect_to root_path
  #   end
  # end
  def index
    if current_user.id == @item.user_id || @item.order.present?
       redirect_to root_path
    end
    @order_form = OrderForm.new
  end

  def create
    @order_form = OrderForm.new(order_params)
    if @order_form.valid?
      pay_item
      @order_form.save
      redirect_to root_path
    else
      render :index
    end
  end

   private

  
  def order_params
    params.require(:order_form).permit(:postal_code, :prefecture_id, :city_name, :block_name, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id],token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']  # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: @item.price,  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end

  def set_item
    @item = Item.find(params[:item_id])
    
  end

end