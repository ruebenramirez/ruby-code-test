class Product
  @@products = {
    "CH1" => {"name" => "Chai", "Price" => 3.11},
    "AP1" => {"name" => "Apples", "Price" => 6.00},
    "CF1" => {"name" => "Coffee", "Price" => 11.23},
    "MK1" => {"name" => "Milk", "Price" => 4.75},
    "OM1" => {"name" => "Oatmeal", "Price" => 3.69}
  }

  def self.find(product_code)
    @@products[product_code]
  end
end
