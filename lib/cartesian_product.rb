class CartesianProduct
include Enumerable

def initialize(x1, y1)
@x1 = x1
@y1 = y1
end

def each
return to_enum unless block_given?
@x1.each do |x|
@y1.each { |y| yield [x, y] }
end
end
end
c = CartesianProduct.new([:a,:b,:c], [4,5])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b,:c], [])
c.each { |elt| puts elt.inspect }
