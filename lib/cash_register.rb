
class CashRegister
    attr_accessor :total, :discount, :title, :price, :items, :oldP
                                                   
    def initialize(discount = 0)
        @discount = discount
        @items = []
        @total = 0
    end
   
    
    def add_item(title, price, optional = 1)
        if optional != 1
            price *= optional
        end
        count = 0
        while count < optional
            @items << title
            count += 1
        end
        @oldP = price
        @total += price
    end

    def void_last_transaction
        @items.pop
        @total -= @oldP
    end

    

    def apply_discount
        dp = (@discount.to_f / 100.to_f)
        per = 1.to_f - dp
        done = self.total.to_f * per.to_f
        @total = done.to_i
        if @total != 0
            p "After the discount, the total comes to $#{@total}."
        else
            p "There is no discount to apply."
        end
    end

end
cash_register = CashRegister.new(20)
cash_register.add_item("macbook air", 1000)
cash_register.add_item("dort", 1000, 2)
cash_register.apply_discount
puts cash_register.items
cash_register.void_last_transaction
puts cash_register.items
#puts cash_register.total