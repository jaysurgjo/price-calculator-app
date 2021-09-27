class Grocery

  @@grocery = {}

  def initialize(item, quantity, price)
    @item = item
    @quantity = quantity
    @price = price
  end

  def self.all
    @@grocery
  end
end

class Sale_item
  @@sale_items = {}

  attr_reader = :item, :unit_price, :sale_price

  def initialize(item, unit_price, sale_price)
    @item = item
    @unit_price = unit_price
    @sale_price = sale price
  end

  def initialize(item, unit_price, sale_price)
    @@sale_items[item] = new(item: item, unit_price: unit_price, sale_price: sale_price)
  end

  def self.all
    @@sale_item
  end
end

def items_bought
  def list
  puts "Please enter all the items purchased separated by a comma:"
  @grocery = gets.chomp
  end
end

private

def total_bill

end

def show_price_table
  puts "Item     Unit price        Sale price"
  puts "--------------------------------------"
  puts "Milk      $3.97            2 for $5.00"
  puts "Bread     $2.17            3 for $6.00"
  puts "Banana    $0.99"
  puts "Apple     $0.89"
end

def list_items
  puts "Item     Quantity      Price"
  puts "--------------------------------------"
  puts "#{item}      #{quantity}            #{price}"
  puts "Total price : #{total}"
  puts "You saved #{saved_money} today."
  
end

begin
  Grocery.new('banana', 1,  0.99)
  Grocery.new('apple', 1,  0.89)
  Grocery.new('milk', 1, 3.97)
  Grocery.new('bread', 1, 2.17)
  #Sale_item.new('milk', 2, 5.00)
  #Sale_item.new('bread', 3, 6.00)

  grocery = Grocery.new
  #grocery.sum_bill
end
