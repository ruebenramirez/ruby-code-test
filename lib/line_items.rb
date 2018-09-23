require 'product'
require 'line_item'

class LineItems
  def initialize()
    @line_items = []
  end

  def add(product_code)
    product = Product.new(product_code)
    @line_items.push(product)
  end

  def total
    total = 0.00
    @line_items.each do |line_item|
      total += line_item.price
      total += self.calculate_discount(line_item)
    end
    total
  end

  def calculate_discount(line_item)
    discount_total = 0.00
    line_item.specials.each do |s|
      if s.active?(self)
        discount_total += s.discount_value
      end
    end
    discount_total
  end

  def qty(product_code)
    #TODO: count qty of product_code
    qty = 0
    @line_items.each do |li|
      if li.product_code == product_code
        qty += 1
      end
    end
    qty
  end
end
