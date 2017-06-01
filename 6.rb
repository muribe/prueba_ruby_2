module Stockable
    attr_accessor :stock
    def has_stock?
        @stock = rand(0..100)
        (@stock > 0) ? true : false
    end
end

module Priceable
    attr_accessor :price
    def discoutend_price(discount)
        @price - @price * discount
    end
end
class Product
    include Stockable
    include Priceable
    def initialize(price)
        @price = price
    end
end

q= Product.new(200).has_stock?

puts q


