
class Product
  attr_accessor :name, :base_price, :tax_rate

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.15
  end
    def total_price
       @base_price * (1 + @tax_rate)
    end
      

end
