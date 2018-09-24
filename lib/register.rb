require 'line_items'
require 'receipt'
require 'logging'

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
    Logging.log.info("adding #{product_code} to line items")
    @line_items.add(product_code)
  end

  def print_receipt
    @receipt.print()
  end
end
