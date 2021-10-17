require "csv"
require "faker"

ServiceUser.delete_all

55.times do
  5.times do
  comServices = ServiceUser.create(
    company_id: Faker::Number.between(from: 6947, to: 6986),
   service_id: Faker::Number.between(from: 21, to: 100)
 )
  end
end

puts "number of table" + ServiceUser.count
