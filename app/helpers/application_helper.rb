module ApplicationHelper

  def product_title(product)
    # split,map,join are for the case when title is downcase
    "#{product.title.split(' ').map(&:capitalize).join(' ')} ##{product.articul.upcase}"
  end

  def product_price(product)
    price = product.sale.zero? ? product.price : 2 * product.price
    number_to_currency(price)
  end

end
