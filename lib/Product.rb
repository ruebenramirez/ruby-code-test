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

class ChaiProduct
  def initialize
    @product_code = "CH1"
    @name = "Chai"
    @price = 3.11
  end

  def discount
    # TODO: experiment with handling discounts at the product level
    ##
    # this allows us to do things like count the total # of apples in the cart and apply discount if >=3
  end
end

