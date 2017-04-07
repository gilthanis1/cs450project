# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Start Product DB Seed Data
Product.delete_all

Product.create! id: 1, name: "T66 Turbo", descr: "66mm ceramic ball bearing turbo", price: 499.99, active: true
Product.create! id: 2, name: "T76 Turbo", descr: "76mm ceramic ball bearing turbo", price: 599.99, active: true
Product.create! id: 3, name: "T88 Turbo", descr: "88mm ceramic ball bearing turbo", price: 699.99, active: true
Product.create! id: 4, name: "T66 Wastegate", descr: "66mm turbo wastegate", price: 99.99, active: true
Product.create! id: 5, name: "T76 Wastegate", descr: "76mm turbo wastegate", price: 199.99, active: true
Product.create! id: 6, name: "T88 Wastegate", descr: "88mm turbo wastegate", price: 299.99, active: true
Product.create! id: 7, name: "HKS SSQV BOV", descr: "HKS SSQV Blow-off Valve", price: 1499.99, active: true
Product.create! id: 8, name: "T66 Exhaust Manifold", descr: "66mm turbo exhaust manifold", price: 499.99, active: true
Product.create! id: 9, name: "T76 Exhaust Manifold", descr: "76mm turbo exhaust manifold", price: 499.99, active: true
Product.create! id: 10, name: "T88 Exhaust Manifold", descr: "88mm turbo exhaust manifold", price: 499.99, active: true
Product.create! id: 11, name: "Manual Boost Controller", descr: "Manual Wastegate Boost Controller", price: 99.99, active: true
Product.create! id: 12, name: "Electronic Boost Controller", descr: "In-car Electronic Boost Controller, 3 pre-sets", price: 299.99, active: true
# End Product Seed Data

# Start Order Status DB Seed Data
OrderStatus.delete_all

OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
# End Order Status DB Seed Data


