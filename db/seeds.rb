# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = Player.create([
	{name: "Rafael Nadal", zip: 90043, email: "dummy-rafael.nadal@email.com"},
	{name: "Roger Federer", zip: 90071, email: "dummy-roger.federer@email.com"},
	{name: "Novak Djokovic", zip: 90008, email: "dummy-novak.djokovic@email.com"},
	{name: "Jo Wilfred Tsonga", zip: 90291, email: "dummy-jo-tsonga@email.com"},
	{name: "Gael Monfils", zip: 90210, email: "dummy-gael.monfils@email.com"}
])

instructors = Instructor.create([
	{name: "Serena Williams", zip: 90405, email: "dummy-serena.williams@email.com"},
	{name: "Caroline Wozniacki", zip: 90211, email: "dummy-caroline.wozniacki@email.com"},
	{name: "Anna Ivanovic", zip: 90066, email: "dummy-anna.ivanovic@email.com"},
	{name: "Taylor Townsend", zip: 90045, email: "dummy-taylor.townsend@email.com"},
	{name: "Petra Nemcova", zip: 90272, email: "dummy-petra-nemcova@email.com"}
])
