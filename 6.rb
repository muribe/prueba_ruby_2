module Priceable
    attr_accessor :price
    def discoutend_price(discount)
        @price - @price * discount
    end
end
class Product
    include Priceable
    def initialize(price)
        @price = price
    end
end