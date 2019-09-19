class CashRegister
  attr_accessor :total, :cart, :last

  def initialize(discount = 0)
    @total ||= 0
    @discount = discount
    @cart ||= []
    @last ||= 0
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = nil)
    if quantity
      self.total += price * quantity
      self.last = price * quantity
      while quantity > 0
        self.cart << title
        quantity -= 1
      end
    else
      @total += price
      self.last = price
      self.cart << title
    end
  end

  def apply_discount
    if @discount != 0
      self.total *= 0.8 
      p "After the discount, the total comes to $#{@total.to_i}."
    else
      p "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    self.total -= self.last
  end

end