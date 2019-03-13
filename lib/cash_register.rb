require 'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :items, :price
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = Array.new
  end
  
  def add_item(item, price, quantity=1)
    @price = price
    @total += (quantity*@price)
    quantity.times { @items << item }
  end
  
  def apply_discount
    if discount != 0
      @total = @total * (100-@discount).to_f * 0.01
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end
  
end
