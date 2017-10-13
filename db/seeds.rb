# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Setting.create(title: "Setting Title", subtitle: "Setting Subtitle", description: "Setting description text.", section_title: "Setting Section Title",
  projects_title: "Setting Projects Title", main_image_url: nil, created_at: DateTime.now, updated_at: DateTime.now, home_image: nil)


