class CashRegister
  attr_accessor :total, :discount, :items, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @currenttotal = @price * @quantity
    @total = @total + @currenttotal
  end

  def apply_discount
    @percentage = @discount * 100
    @total = @total * @percentage
  end
end
