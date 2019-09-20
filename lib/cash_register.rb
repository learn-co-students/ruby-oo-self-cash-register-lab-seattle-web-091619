
require "pry"
class CashRegister

    attr_accessor :total, :discount, :item, :quantity 
    @@last_price = 0.0
    
    
    def initialize(discount = nil , total = 0)
        
        @total = total
        @discount ||= discount 
        @item = []
        
    end
    
    
    def add_item(title,price,quantity = 1)
        
        quantity.times do 
        self.item << title
        @@last_price = price
        end 
        
        @quantity = quantity
        @total+= (price.to_f * quantity)
      
    end
    
    def items
        @item
    end
    
    def apply_discount
        if @discount == 0 || @discount == nil
            p "There is no discount to apply."
        else
            @total = @total - (@total * @discount/100)
            p "After the discount, the total comes to $#{@total.to_i}."
        end
    
    end
    
    def void_last_transaction
        
        items.pop
        if @item.length == 0 or item == nil
            self.total = 0
        else
            @total = @total - @@last_price*(self.quantity)
        end
        
    end
    
    
    end
    
    
    
    
  