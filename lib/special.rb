require 'line_item'
require 'catalog'

class Special
  attr_reader :discount_value

  def initialize(special_code)
    @special_code = special_code
    item = Catalog.find_special(special_code)
    @product_code_to_discount = item['product_code_to_discount']
    @discount_value = item['discount_value']
    @required_line_item = item['required_line_item']
    @required_qty = item['required_qty']
  end

  def active?(line_items)
    register_qty = line_items.qty(@required_line_item)
    if register_qty >= @required_qty
      return true
    end
    false
  end
end
