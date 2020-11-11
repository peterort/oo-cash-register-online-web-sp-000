class CashRegister
  attr_accessor :total, :discount, :items, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @items << title
    @quantity = quantity
    if @quantity > 1
      price * quantity
    @total = @total + price
  end

  end
end
