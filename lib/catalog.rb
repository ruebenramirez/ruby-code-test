class Catalog
  @@products = {
    "CH1" => {"name" => "Chai", "price" => 3.11},
    "AP1" => {"name" => "Apples", "price" => 6.00},
    "CF1" => {"name" => "Coffee", "price" => 11.23},
    "MK1" => {"name" => "Milk", "price" => 4.75},
    "OM1" => {"name" => "Oatmeal", "price" => 3.69}
  }

  @@specials = {
    "BOGO" => {"rule_description" => "Buy-One-Get-One-Free Special on Coffee. (Unlimited)",
               "product_code_to_discount" => "CF1",
               "discount_value" => 11.23,
               "required_line_item" => "CF1",
               "required_qty" => 1},
    "APPL" => {"rule_description" => "If you buy 3 or more bags of Apples, the price drops to $4.50.",
               "product_code_to_discount" => "AP1",
               "discount_value" => 1.50,
               "required_line_item" => "AP1",
               "required_qty" => 3},
    "CHMK" => {"rule_description" => "Purchase a box of Chai and get milk free. (Limit 1)",
               "product_code_to_discount" => "MK1",
               "discount_value" => 4.75,
               "required_line_item" => "CH1",
               "required_qty" => 1},
    "APOM" => {"rule_description" => "Purchase a bag of Oatmeal and get 50% off a bag of Apples",
               "product_code_to_discount" => "AP1",
               "discount_value" => 3.00,
               "required_line_item" => "CH1",
               "required_qty" => 1},
  }

  def self.find_product(product_code)
    @@products[product_code]
  end

  def self.find_special(special_code)
    @@specials[special_code]
  end
end
