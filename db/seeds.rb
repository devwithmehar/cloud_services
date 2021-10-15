require "csv"
require "faker"

ServiceUser.delete_all

20.times do
  6.times do
  comServices = ServiceUser.create(
    company_id: Faker::Number.between(from: 1, to: 139),
   service_id: Faker::Number.between(from: 21, to: 100)
 )
  end
end

puts "number of table" + ServiceUser.count

