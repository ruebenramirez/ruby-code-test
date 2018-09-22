require 'product'
require 'discount'
require 'receipt'
require 'line_item'
require 'line_items'

class Register
  attr_reader :total
  attr_reader :line_items

  def initialize
    @line_items = []
    @total = 0.00
    @receipt = Receipt.new(self)
  end

  def line_items
    @line_items
  end

  def total
    @total
  end

  def add(product_code)
    product = Product.new(product_code)
    line_item = LineItem.new(product)
    @line_items.push(line_item)
    @total += product.price
    self.apply_discounts
    self.print_receipt
  end

  def apply_discounts
    # TODO: apply discounts
    # crawl line items adding discounts as necessary
  end

  def print_receipt
    @receipt.print()
  end
end
