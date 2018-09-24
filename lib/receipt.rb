class Receipt
  def self.print(line_items, subtotal)
    self.print_header
    line_items.each do |li|
      self.print_item(li.product_code, li.price)
      li.specials.each do |s|
        if s.active
          self.print_discount(s.special_code, s.discount_value)
        end
      end
    end
    self.print_total(subtotal)
  end

  def self.print_header
    puts "Item" % "%27s" % "Price"
		puts "----" % "%27s" % "-----"
  end

  def self.print_item(item, price)
    puts "%-27{i}%{p}".% i: item, p: price
  end

  def self.print_discount(discount, price)
    puts "%12{d}%20{p}".% d: discount, p: price
  end

  def self.print_total(subtotal)
    puts "-------------------------------"
    puts "%31{p}".% p: subtotal

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
