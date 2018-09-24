require_relative 'line_item'
require_relative 'catalog'
require_relative 'logging'

class SpecialFactory
  def self.build(special_code)
    case special_code
    when 'BOGO'
      BogoSpecial.new(special_code)
    when 'APPL'
      Special.new(special_code)
    when 'CHMK'
      Limit1Special.new(special_code)
    when 'APOM'
      Limit1Special.new(special_code)
    end
  end
end

class Special
  attr_reader :discount_value
  attr_reader :special_code
  attr_reader :active

  def initialize(special_code)

    @special_code = special_code
    item = Catalog.find_special(special_code)
    @product_code_to_discount = item['product_code_to_discount']
    @discount_value = item['discount_value']
    @required_line_item = item['required_line_item']
    @required_qty = item['required_qty']
    @active = false
  end

  def active?(line_items)
    register_qty = line_items.qty(@required_line_item)
    Logging.log.info("#{@special_code}'s in cart: #{register_qty} (#{@required_qty} required)")
    if register_qty >= @required_qty
      @active = true
    end
    @active
  end
end

class BogoSpecial < Special
  def active?(line_items)
    register_qty = line_items.qty(@required_line_item)
    Logging.log.info("#{@special_code}'s in cart: #{register_qty} (#{@required_qty} required)")
    if register_qty >= @required_qty
      active_qty = line_items.qty_active_specials(@required_line_item, @special_code)
      if active_qty % 2 == 0
        @active = true
      end
    end
    @active
  end
end

class Limit1Special < Special
  def active?(line_items)
    register_qty = line_items.qty(@required_line_item)
    Logging.log.info("#{@special_code}'s in cart: #{register_qty} (#{@required_qty} required)")
    if register_qty >= @required_qty
      active_qty = line_items.qty_active_specials(@required_line_item, @special_code)
      if active_qty < 1
        @active = true
      end
    end
    @active
  end
end
