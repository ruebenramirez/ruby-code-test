require 'product'

class Cart
  attr_reader :total
  attr_reader :items

  def initialize
    @items = []
    @total = 0.00
  end

  def add(product_code)
    product = Product.find(product_code)
    @items.push(product_code => product)
    @total += product["Price"]
  end

  def items
    @items
  end

  def total
    @total
  end
end
