require 'line_item'

class Discounts
  @@discounts = {
    "BOGO" => {"name" => "Buy-One-Get-One-Free Special on Coffee. (Unlimited)", "price" => 3.11},
    "AP1" => {"name" => "Apples", "price" => 6.00},
    "CF1" => {"name" => "Coffee", "price" => 11.23},
    "MK1" => {"name" => "Milk", "price" => 4.75},
    "OM1" => {"name" => "Oatmeal", "price" => 3.69}
  }

  def self.find(discount_code)
    @@discount[discount_code]
  end
end

class Discount()

end

class BogoDiscount < Discount
  def initialize(code, price)
    @discount_code = code
    @discount_price = price

  end

  def discount(line_items)
    if
  end

end
