require "pry" 

class CashRegister
    attr_accessor :discount, :total, :add_item, :item
    def initialize(discount=20, total=0.0)
        @total = total
        @discount = discount
        @item = []
        @price = []
        @added_items = []
    end

    def add_item(title, price, quantity = 1)
        @added_items << ({:item => title, :quantity => quantity})
        quantity.times {@price << price}
        quantity.times {@item << title}
       @total += price.to_f * quantity
    end

    def apply_discount
        if @discount != 20
            return "There is no discount to apply."
            
        else
            @total = @total - (@total * discount / 100)
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items 
        @item 
    end

    def void_last_transaction
        @total = @total - @price.last
        deleted_item = @added_items.pop
        deleted_item[:quantity].times {@item.pop}        
        if @item[0] == nil
           @total = 0.to_f
        end
    end
    
end
