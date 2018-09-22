require 'catalog'
require 'special'

class Product
  attr_reader :product_code
  attr_reader :name
  attr_reader :price

  def initialize(product_code)
    item = Catalog.find_product(product_code)
    @product_code = product_code
    @name = item['name']
    @price = item['price']
  end
end

class ChaiProduct
  def initialize
    @product_code = "CH1"
    @name = "Chai"
    @price = 3.11
    @special = Special.new(
  end

end

