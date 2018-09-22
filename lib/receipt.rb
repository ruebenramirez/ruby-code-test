
class Receipt

  def initialize(cart)
    @line_items = cart.line_items
  end

  def print()
    @line_items.each do |li|
      case li.type
      when 'Product'
        print_item(li.code, li.price)
      when 'Discount'
        print_discount(li.code, li.price)
      end
    end
  end

  def print_header
    puts "Item" % "%27s" % "Price"
		puts "----" % "%27s" % "-----"
  end

  def print_item(item, price)
    puts "%-27{i}%{p}".% i: item, p: price
  end

  def print_discount(discount, price)
    puts "%12{d}%19{p}".% d: discount, p: price
  end
end

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
#                               16.61
