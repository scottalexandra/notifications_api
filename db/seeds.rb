# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(full_name: "Sandra Bullock")
user.notifications.create(content: "Your articles of incorporation are complete!")
user.notifications.create(content: "Your application for EIN has been successfully completed")
user.notifications.create(content: "Your application for 501c3 Status has been initiated!")
