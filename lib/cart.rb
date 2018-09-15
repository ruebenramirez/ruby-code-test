require 'product'

class Cart
  attr_reader :total
  attr_reader :items

  def initialize
    @items = []
    @total = 0.00
  end

  def items
    @items
  end

  def total
    @total
  end

  def add(product_code)
    product = Product.new(product_code)
    @items.push(product)
    @total += product.price
    apply_discounts
  end

  def apply_discounts

  end

  def print_receipt
    ##
		# example receipt:
		# ----------------
    # Item                          Price
		# ----                          -----
		# CH1                            3.11
		# AP1                            6.00
		#             APPL              -1.50
		# AP1                            6.00
		#             APPL              -1.50
		# AP1                            6.00
		#             APPl              -1.50
		# MK1                            4.75
		#             CHMK              -4.75
		# -----------------------------------
                              16.61
  end
end
