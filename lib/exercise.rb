require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

#p Customer.all.count

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

p Customer.order("name ASC")
