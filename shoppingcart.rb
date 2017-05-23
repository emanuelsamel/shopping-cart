# Each product has a name, base price, and tax rate. There should also be a method to calculate and return the product's total price based on the base price and tax rate.
#
# !!Each shopping cart has a collection of products. It should also have the following functionality:
#
# add an product to the cart
# remove an product from the cart
# add up the total cost of all products in the cart before tax
#  add up the total cost of all products in the cart after tax


require "./product.rb"

   class Cart


    def initialize

      @products = []
    end

    def add_product(new_product)
      @products << new_product
    end
    #
    def remove_product(product)
      @products.delete(product)
    end

    def sub_total
      result = 0
      @products.each do |product|
        result += product.base_price

      end
      return result
    end

    def total
      result = 0
      @products.each do |product|
        result += product.total_price
      end
      return result
    end




end

cart = Cart.new
cheese = Product.new("cheese", 5)
cart.add_product(cheese)

steak = Product.new("steak", 10)
cart.add_product(steak)

p cart.total
# puts "this is p

#
# p cart
# puts
# puts "this is puts"
# puts cart
# puts
# puts "this puts with inspect"
#
# puts cart.inspect
