class LineItem
  attr_reader :type

  ##
  # line items can be either products or discounts
  def initialize(item)
    @item = item
  end
end
