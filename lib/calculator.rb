puts "Please enter all the items purchased separated by a comma:"
grocery_input = gets.chomp.strip
#taking in the input here and stripping it.

items_price = {
  milk: {unit_price: 3.97, sale_quantity: 2, sale_price: 5.00},
  bread: {unit_price: 2.17, sale_quantity: 3, sale_price: 6.00},
  banana: {unit_price: 0.99},
  apple: {unit_price: 0.89},
}
#created a hash table with the data from the weekly priing table.

grocery_items = []
#created an empty array to store the data.
unless grocery_input.empty?
  #loop for grocery input
  grocery_list = grocery_input.split(',').collect(&:strip)
  #made grocery list equal grocery input and stripped the comma and white space
  grouped_grocery_list = grocery_list.group_by(&:itself)
  #grouped the items
  grouped_grocery_list.each { |k,v| grocery_items.push({name: k, quantity: v.length}) }
  grocery_items.each do |item|
    #parsed the data using a key value pair for name and quantity
    item_name = item[:name].to_sym
    #item name to a symbol
    price = items_price[item_name]
    if price[:sale_quantity]
      sales = item[:quantity] / price[:sale_quantity]
      #divided the item quantity by the sale quantity
      units = item[:quantity] % price[:sale_quantity]
      #gives us the remainder from using the module operator
      item[:price] = (units * price[:unit_price]) + (sales * price[:sale_price])
      #multiplying the units times price plus sales price to come up with the item price
      supposed_price = item[:quantity] * price[:unit_price]
      #price
      item[:saved_money] = supposed_price - item[:price]
      #subtracting to get the money saved
    else
      item[:price] = item[:quantity] * price[:unit_price]
      item[:saved_money] = 0
      #different logic if the first isnt true, will show that no money was saved
    end
    item
    #returning the item
  end
end

#printed the table
puts "Item     Quantity      Price"
puts "--------------------------------------"
grocery_items.each { |item| puts "#{item[:name]}      #{item[:quantity]}            #{item[:price]}"}
#parsed with the each method to list the varibles needed
puts "Total price : #{sprintf("%.2f", grocery_items.sum { |h| h[:price] })}"
#used sprintf "%.2f" to turn the float number into a rounded number. 2 decimal points
puts "You saved #{sprintf("%.2f", grocery_items.sum { |h| h[:saved_money] })} today."
