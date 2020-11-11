class CashRegister
  attr_accessor :total, :discount, :items, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title << title
    @quantity = quantity
    if @quantity > 1
      @grandtotal = price * quantity
    @total = @total + @grandtotal
  end

  end
end
