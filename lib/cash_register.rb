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
    if @discount > 0
    @discount_price = (@total * @discount)/ 100
    @total -= @discount_price
    return "After the discount, the total comes to $#{@total}."
  else
    return "There is no discount to apply."
  end
  end

  def items
  end





end
