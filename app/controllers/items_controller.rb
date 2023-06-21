class ItemsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]
  # before_action :set_item, only: [:show, :edit, :update, :destroy]


  def index
    #@items = Item.all.order(created_at: "DESC")
  end

  # def show
  # end

  # # def new
  # #   @item = Item.new
  # # end

  # def create
  # end
  
  #  def edit
  #  end

  #  def update
  #    if @item.update(item_params)
  #      redirect_to item_path(@item.id)
  #    else
  #      render :edit
  #    end
  #  end

  # def destroy
  # end


  #  private

  #   def set_item
  #   end

  #  def item_params
  #    params.require(:item).permit(:user, :description, :name, :category_id, :item_status_id, :shipping_cost_id, :prefecture_id, :shipping_date_id, :price).merge(user_id: current_user.id)
  #  end 
end
