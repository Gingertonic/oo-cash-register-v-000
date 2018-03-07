class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << name}

    @last_item = {name: name, price: price, quantity: quantity}
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      reduction = (self.total / 100) * self.discount
      @total = self.total - reduction
      puts "After the discount, the total comes to $#{@total}."
    end
  end

  def items
end
