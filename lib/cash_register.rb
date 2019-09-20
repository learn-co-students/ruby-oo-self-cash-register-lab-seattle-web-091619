class CashRegister

    attr_accessor :total, :discount, :title, :price

    def initialize ( discount = nil)
if discount != nil
    discount = 20
    @discount = discount
end
    @total = 0
    @oldtotal = @total
    @items = []

    end

    def add_item(title, price, optional = 0)
        puts optional
        puts @items
if optional != 0

    optional.times do 
         (@items << title)
    end
    puts optional
price = price * [optional, 1].max
end
if optional != 3
    puts optional
    puts "dcfgvhjknldsfb shgbfeaskjcv adhsjmcvb jdsah"
    @items << title
end
if optional != nil
#apply_discount
end
puts @items 
@oldtotal  = @total 
@total += price
end

def items 
@items
end



def void_last_transaction

    @total = @oldtotal

end


def apply_discount
 

   @total = (@total .to_f * ((100.to_f)-@discount.to_f)/100.to_f)
   puts @total
   puts @discount
@total = @total.to_i
if @total != 0
return "After the discount, the total comes to $#{@total}."  
end
 if @total == 0
p "There is no discount to apply."
    end
end


end