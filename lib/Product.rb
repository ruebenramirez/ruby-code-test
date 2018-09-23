require 'catalog'
require 'special'

class Product
  attr_reader :product_code
  attr_reader :name
  attr_reader :price
  attr_reader :specials

  def initialize(product_code)
    item = Catalog.find_product(product_code)
    @product_code = product_code
    @name = item.fetch("name", "")
    @price = item.fetch("price", "")
    @specials = []
    item.fetch("special_codes", []).each do |sc|
      special = Special.new(sc)
      @specials.push(special)
    end
  end
end

