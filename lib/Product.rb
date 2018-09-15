require 'catalog'

class Product
  attr_reader :product_code
  attr_reader :name
  attr_reader :price

  def initialize(product_code)
    item = Catalog.find(product_code)
    @product_code = product_code
    @name = item['name']
    @price = item['price']
  end
end
