require 'cart'

RSpec.describe Cart, "#total" do
  context "cost of Chai" do
    it "outputs cost" do
      cart = Cart.new
      cart.add('CH1')
      expect(cart.total).to eq 3.11
    end
  end

  context "cost of Apples" do
    it "outputs cost" do
      cart = Cart.new
      cart.add('AP1')
      expect(cart.total).to eq 6.00
    end
  end

  context "cost of Coffee" do
    it "outputs cost" do
      cart = Cart.new
      cart.add('CF1')
      expect(cart.total).to eq 11.23
    end
  end

  context "cost of Milk" do
    it "outputs cost" do
      cart = Cart.new
      cart.add('MK1')
      expect(cart.total).to eq 4.75
    end
  end

  context "cost of Oatmeal" do
    it "outputs cost" do
      cart = Cart.new
      cart.add('OM1')
      expect(cart.total).to eq 3.69
    end
  end

  context "free milk with puchase of chai" do
    it "sums cart total" do
      cart = Cart.new
      cart.add('CH1')
      cart.add('AP1')
      cart.add('CF1')
      cart.add('MK1')
      expect(cart.total).to eq 20.34
    end
  end
end


