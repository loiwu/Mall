class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  def
    current_item = line_itmes.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end
end
