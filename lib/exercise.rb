require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

#c

#p Customer.first.name

#p Customer.last


#### the two methods below return the same thing
# p Customer.find(3)
#
# p Customer.where(id:3).first


# p Customer.where(state: "Colorado")

#### the two methods below return the same thing
#
# p Customer.all.limit(5)
#
# p Customer.first(5)

# p Customer.order("name ASC")

# p Customer.order("name DESC")

# p Item.all

# p Item.where("name LIKE ?", "boot%")

# p Order.all.count

# p Order.first(5)

# p Order.last(5)

# Customer.all.each do |customer|
#   puts "#{customer.name} - #{customer.address}"
# end

# Customer.all.each do |customer|
#   puts "#{customer.name} - #{customer.address} - #{customer.id}"
# end

# p Customer.all.count

# p Order.sum("amount").to_f

# p Order.where(customer_id: 1).sum("amount").to_f

# p Order.average("amount").to_f.round(2)

# p Order.minimum("amount").to_f.round(2)

# p Order.maximum("amount").to_f.round(2)

# Order.group("customer_id").minimum("amount").each do |key, value|
#   p key
#   p value.to_f.round(2)
# end

# Order.group("customer_id").maximum("amount").each do |key, value|
#   p key
#   p value.to_f.round(2)
# end

# Customer.where(state: "Colorado", city: "Rigobertoside").each do |customer|
#   puts customer.name
# end


# Customer.all.each do |customer|  #not as good
#   puts customer.name if customer.state == "Ohio" || customer.state == "Virginia"
# end

# Customer.where("state = ? or state = ?", "Ohio", "Virginia").each do |customer|
#   puts "#{customer.name} - #{customer.state}"
# end

# p Customer.where(state: ["Ohio", "Virginia"]) #like an "or"

# item = Item.find(3)
# item.name="board01"
# item.save
# p Item.find(3).name
# p Item.find(3).description

# Item.create(name:"kayak01", description:"one person river kayak")
# p Item.find_by(name:"kayak01")

# Item.find(10).destroy
# p Item.find(10)

# Order.group("customer_id").sum("amount").each do |key, value|
#   p key
#   p value.to_f.round(2)
# end

# Order.all.each do|order|
# p "#{order.id}, #{order.customer.name}, #{order.amount}"
# end

# Customer.all.each do |customer|
#   puts customer.name
#   customer.orders.each do |order|
#     puts "\tOrderID:#{order.id} - $#{order.amount}"
#   end
#   puts
# end

# Customer.all.order("name ASC").each do |customer|
#   puts "ID: #{customer.id}  Name: #{customer.name} Amount: $#{customer.orders.sum("amount")}"
# end

# Order.group("customer_id").sum("amount").each do |key, value|
#   p Customer.find(key).name
#   p value.to_f.round(2)
# end

# Customer.all.order("name ASC").each do |customer|
#   puts "ID: #{customer.id}  Name: #{customer.name} Amount: $#{customer.orders.average("amount")}"
# end

# Customer.select("name", "id").order("name ASC").each do |customer|
#   puts "ID: #{customer.id}  Name: #{customer.name} Amount: $#{customer.orders.average("amount").round(2)}"
# end

# orders = Order.where(customer_id: 2)
# p Orderitem.joins(:item, :order)

#p Orderitem.all.count


#display all the item names from all the orders that have customer id = 2
Item.joins(orderitems: [:order]).where(orders: {customer_id: 2}).uniq.each do |item|
  puts "ID:#{item.id} Name:#{item.name}"
end

puts
puts






