require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction_amount

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item (item, price, quantity = 1)
      @item = item
      self.total = self.total + (price * quantity)
      quantity.times do @items << @item
      self.last_transaction_amount = price * quantity
      end
    end

    def apply_discount
      if @discount == 0
      return "There is no discount to apply."

      else
      @total = @total - (@total * @discount.to_f / 100.00).to_i
      return "After the discount, the total comes to $#{@total}."
      end
    end

    def void_last_transaction
    self.total = self.total - last_transaction_amount
  end
end



# binding.pry
