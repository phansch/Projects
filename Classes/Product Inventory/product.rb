class Product
  attr_accessor :id, :price, :quantity

  def initialize(id, price, quantity)
    @id = id
    @price = price
    @quantity = quantity
  end

  def to_s
    @id.to_s + ": " + @price.to_s + "€. Amount: " + @quantity.to_s
  end
end