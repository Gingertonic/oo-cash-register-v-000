class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(name, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    reduction = (self.total / 100) * self.discount
    @total = self.total - reduction
    puts "After the discount, the total comes to $#{@total}."
  end
end
