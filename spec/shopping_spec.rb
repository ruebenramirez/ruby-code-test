require 'register'

RSpec.describe Register, "#total" do
  context "outputs cost" do
    it "cost of Chai" do
      register = Register.new
      register.add('CH1')
      expect(register.total).to eq 3.11
    end
  end

  context "outputs cost" do
    it "cost of Apples" do
      register = Register.new
      register.add('AP1')
      expect(register.total).to eq 6.00
    end
  end

  context "outputs cost" do
    it "cost of Coffee" do
      register = Register.new
      register.add('CF1')
      expect(register.total).to eq 11.23
    end
  end

  context "outputs cost" do
    it "cost of Milk" do
      register = Register.new
      register.add('MK1')
      expect(register.total).to eq 4.75
    end
  end

  context "outputs cost" do
    it "cost of Oatmeal" do
      register = Register.new
      register.add('OM1')
      expect(register.total).to eq 3.69
    end
  end

  context "sums Register total" do
    it "free milk with puchase of chai" do
      register = Register.new
      register.add('CH1')
      expect(register.total).to eq 3.11
      register.add('AP1')
      expect(register.total).to eq 9.11
      register.add('CF1')
      expect(register.total).to eq 20.34
      register.add('MK1')
      expect(register.total).to eq 20.34
    end
  end

  context "sums Register total" do
    it "sums milk and apple purchase" do
      register = Register.new
      register.add('MK1')
      register.add('AP1')
      expect(register.total).to eq 10.75
    end
  end

  context "sums Register total" do
    it "buy one get one coffee purchase" do
      register = Register.new
      register.add('CF1')
      expect(register.total).to eq 11.23
      register.add('CF1')
      expect(register.total).to eq 11.23
    end
  end

  context "sums Register total" do
    it "buy 3 apples purchase" do
      register = Register.new
      register.add('AP1')
      expect(register.total).to eq 6.00
      register.add('AP1')
      expect(register.total).to eq 12.00
      register.add('CH1')
      expect(register.total).to eq 15.11
      register.add('AP1')
      expect(register.total).to eq 16.61
    end
  end
end
