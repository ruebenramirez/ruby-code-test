require 'line_item'
require 'catalog'

class Special
  def initialize(special_code)
    @special_code = special_code
    item = Catalog.find_special(special_code)
    @product_code_to_discount = item.product_code_to_discount
    @discount_value = item.discount_value
    @required_line_item = item.required_line_item
    @required_qty = item.required_qty
  end

  def meets_criteria(line_items)
    register_qty = line_items.qty(@required_line_item)
    if register_qty >= @required_qty
      True
    end
    False
  end
end
