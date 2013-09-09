class Inventory
  def initialize
    @products = Array.new
  end

  def add(*products)
    products.each do |p|
      @products.push(p)
    end
  end

  def value
    total = 0
    @products.each do |p|
      total += (p.price * p.quantity)
    end
    total
  end
end