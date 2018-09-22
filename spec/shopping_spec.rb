require 'register'

RSpec.describe Register, "#total" do
  context "cost of Chai" do
    it "outputs cost" do
      Register = Register.new
      Register.add('CH1')
      expect(Register.total).to eq 3.11
    end
  end

  context "cost of Apples" do
    it "outputs cost" do
      Register = Register.new
      Register.add('AP1')
      expect(Register.total).to eq 6.00
    end
  end

  context "cost of Coffee" do
    it "outputs cost" do
      Register = Register.new
      Register.add('CF1')
      expect(Register.total).to eq 11.23
    end
  end

  context "cost of Milk" do
    it "outputs cost" do
      Register = Register.new
      Register.add('MK1')
      expect(Register.total).to eq 4.75
    end
  end

  context "cost of Oatmeal" do
    it "outputs cost" do
      Register = Register.new
      Register.add('OM1')
      expect(Register.total).to eq 3.69
    end
  end

  context "free milk with puchase of chai" do
    it "sums Register total" do
      Register = Register.new
      Register.add('CH1')
      Register.add('AP1')
      Register.add('CF1')
      Register.add('MK1')
      expect(Register.total).to eq 20.34
    end
  end
end


