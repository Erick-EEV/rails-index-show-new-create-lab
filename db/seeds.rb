# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Coupon.create(coupon_code: "20178", store: "Walmart")
# Coupon.create(coupon_code: "34567", store: "Target")
# Coupon.cretae(coupon_code: "")
20.times do
  Coupon.create(store: Faker::ProgrammingLanguage.name, coupon_code: Faker::Barcode.ean)
end
