require_relative 'catalog'
require_relative 'special'
require_relative 'logging'

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
      special = SpecialFactory.build(sc)
      @specials.push(special)
    end
    Logging.log.info("product #{product_code} initialized with these specials: #{item.fetch("special_codes", []).join(',')}")

  end
end

