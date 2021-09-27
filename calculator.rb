class Calculator

  @@grocery = Hash.new

  def initialize(item, quantity, price)
    @item
    @quantity
    @price
  end

  def self.all
    @@grocery
  end
end

class Sale_item
  @@sale_item = Hash.new

  def initialize(item, unit_price, sale_price)
    @item
    @unit_price
    @sale_price
  end

  def self.all
    @@sale_item
  end
end

private

def show_price_table
  puts "Item     Unit price        Sale price"
  puts "--------------------------------------"
  puts "Milk      $3.97            2 for $5.00"
  puts "Bread     $2.17            3 for $6.00"
  puts "Banana    $0.99"
  puts "Apple     $0.89"
end

def list_items
  puts "Please enter all the items purchased separated by a comma:"
  puts "Item     Quantity      Price"
  puts "--------------------------------------"
  puts "#{item}      #{quantity}            #{price}"

  puts "Total price : #{total}"
  puts "You saved #{saved_money} today."
  
end
