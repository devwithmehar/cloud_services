require "csv"


filename = Rails.root.join("db/top_movies.csv")

puts "Loading Movies from the CSV File: #{filename}"

csv_data = File.read(filename)
company = CSV.parse(csv_data, headers: true , encoding: "utf-8")

company.each do |c|

  companies = Company.find_or_create_by(name: c["production_company"])

end

puts "Created #{Company.count}  Companies"
