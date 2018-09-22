class LineItems
  def initialize()
    @line_items = []
  end

  def add(line_item)
    @line_items.push(line_item)
  end

  def qty(product_code)
    #TODO: count qty of product_code
    qty = 0
    @line_items.each do |line_item|
      if line_item.type != 'Product'
        break
      end
      if line_item.item.product_code == product_code
        qty += 1
      end
    end
    qty
  end
end
