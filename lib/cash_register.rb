require 'pry'
class CashRegister

    attr_accessor :discount, :total

    def initialize(discount=0)
        @discount = discount
        @total = 0
    end

    def add_item(total, price, quantity=1)
        @total += price * quantity
    end

    def apply_discount
        if @discount > 0
            my_discount = @total * @discount/100
            @total = @total - my_discount
            "After the discount, the total comes to $#{@total}."
        end
    end

end
binding.pry
