class Product < ApplicationRecord

  def price_with_sale
    price * (1 - sale)
  end

end
