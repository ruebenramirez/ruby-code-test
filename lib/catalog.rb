class Catalog
  @@products = {
    "CH1" => {"name" => "Chai", "price" => 3.11},
    "AP1" => {"name" => "Apples", "price" => 6.00},
    "CF1" => {"name" => "Coffee", "price" => 11.23},
    "MK1" => {"name" => "Milk", "price" => 4.75},
    "OM1" => {"name" => "Oatmeal", "price" => 3.69}
  }

  def self.find(product_code)
    @@products[product_code]
  end
end
