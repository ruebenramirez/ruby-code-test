require 'product'
require 'line_item'

class LineItems
  def initialize()
    @line_items = []
  end

  def add(product_code)
    product = Product.new(product_code)
    line_item = LineItem.new(product)
    @line_items.push({product_code: line_item})
  end

  def total
    #TODO: crawl line items for a total
  end

  def qty(product_code)
    #TODO: count qty of product_code
    qty = 0
    @line_items.each do |line_item|
      if line_item.product_code == product_code
        qty += 1
      end
    end
    qty
  end
end
