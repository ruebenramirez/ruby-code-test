require_relative 'product'
require_relative 'line_item'
require_relative 'logging'

class LineItems
  attr_reader :line_items

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
    Logging.log.info("total: #{total}")
    total
  end

  def calculate_discount(line_item)
    discount_total = 0.00
    Logging.log.debug("line item: #{line_item.product_code}")
    line_item.specials.each do |s|
      Logging.log.debug("special: #{s.special_code}")
      if s.active?(self)
        Logging.log.debug("#{line_item.product_code}'s special #{s.special_code} --- is ACTIVE")
        discount_total += s.discount_value
      end
    end
    Logging.log.info("discount total: #{discount_total}")
    discount_total
  end

  def qty(product_code)
    qty = 0
    @line_items.each do |li|
      if li.product_code == product_code
        qty += 1
      end
    end
    qty
  end

  def qty_active_specials(product_code, special_code)
    qty = 0
    @line_items.each do |li|
      if li.product_code == product_code
        li.specials.each do |s|
          if s.special_code == special_code && s.active
            qty += 1
          end
        end
      end
    end
    qty
  end
end
