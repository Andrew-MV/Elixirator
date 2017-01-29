class Product < ApplicationRecord
  acts_as_paranoid

  def price_with_sale
    price * (1 - sale)
  end

end
