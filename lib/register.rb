require 'product'
require 'special'
require 'receipt'
require 'line_item'
require 'line_items'

class Register
  attr_reader :total
  attr_reader :line_items

  def initialize
    # TODO: initialize the product catalog
    @line_items = LineItems.new
    @total = 0.00
    @receipt = Receipt.new(self)
  end

  def total
    @line_items.total
  end

  def add(product_code)
    @line_items.add(product_code)
    self.print_receipt
  end

  def print_receipt
    @receipt.print()
  end
end
