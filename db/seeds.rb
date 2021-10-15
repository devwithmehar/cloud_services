require "faker"

Service.delete_all
Cloud.delete_all
Type.delete_all


20.times do
  cloud = Cloud.create(
    name: Faker::Name.unique.name
  )

  # firstCloud = Cloud.first.id
  # nextCloudLimit = firstCloud + 190

  type = Type.create(
    name:  Faker::Name.unique.name
  )

  # firstType = Type.first.id
  # nextTypeLimit = firstType + 190
  4.times do
      services = Service.create(
      name: Faker::Coffee.blend_name,
      description:  Faker::Food.description,
      price: Faker::Commerce.price,
      cloud: cloud,
      type: type
    )
end
end


puts Cloud.first.id

puts "Number of Cloud #{Cloud.count}"
puts "Number of Type #{Type.count}"
puts "Number of Service #{Service.count}"
