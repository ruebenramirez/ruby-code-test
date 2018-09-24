require_relative 'line_items'
require_relative 'receipt'
require_relative 'logging'

class Register
  attr_reader :total
  attr_reader :line_items

  def initialize
    @line_items = LineItems.new
  end

  def total
    @line_items.total
  end

  def add(product_code)
    Logging.log.info("adding #{product_code} to line items")
    @line_items.add(product_code)
  end

  def print_receipt
    Receipt.print(@line_items.line_items, @line_items.total)
  end
end
