# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'testm@google.com', password: "qwerty")
puts user.as_json
statuses = Status.create([{status_name: 'Uncompleted'}, {status_name: 'Completed'}])
puts statuses.as_json
project = Project.create([{project_name: 'test project', description: 'descr', status_id: statuses.first.id, user_id: user.id}])
puts project.as_json
