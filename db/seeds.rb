# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

datafile = Rails.root + 'db/data.csv'

CSV.foreach(datafile, headers: true) do |row|

  Address.find_or_create_by({vendor_id: row[0]}) do |hr|
    hr.vendor_id = row[0]
    hr._type =  row[1]
    hr.lat =  row[2]
    hr.lng =  row[3]
    hr.wikipedia =  row[4]
    hr.iata =  row[5]
    hr.code =  row[6]

  end

end