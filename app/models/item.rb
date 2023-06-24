class Item < ApplicationRecord

  belongs_to :user
  belongs_to :category
  belongs_to :item_status
  belongs_to :shipping_cos
  belongs_to :prefecture
  belongs_to :shipping_date

  has_one_attached :image

  with_options presence: true do
    validates :user_id
    validates :image
    validates :name
    validates :description
    validates :category_id
    validates :item_status_id
    validates :shipping_cost_id
    validates :prefecture_id
    validates :shipping_date_id
  end
end
