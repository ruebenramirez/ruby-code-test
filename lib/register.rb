require 'line_items'
require 'receipt'

class Register
  attr_reader :total
  attr_reader :line_items

  def initialize
    @line_items = LineItems.new
    @receipt = Receipt.new(self)
  end

  def total
    @line_items.total
  end

  def add(product_code)
    @line_items.add(product_code)
  end

  def print_receipt
    @receipt.print()
  end
end
