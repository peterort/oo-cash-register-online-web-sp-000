class CashRegister
  attr_accessor :total, :discount, :items, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @quantity = quantity
    @total += @price * @quantity
    @last_transaction << @price
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter +=1
      end
    else
      @items << item
    end
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
    @items
  end

def void_last_transaction
  @last = @last_transaction
  @total - @last

end




end
