# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
Task.destroy_all

event_management = Project.find_or_create_by(name:"Event Management")
design_conference = Project.find_or_create_by(name:"Design Conference")

Task.find_or_create_by(title: "Finalize Budget", deadline: "Mon, 21 Oct 2020", creator: "Faith", completed: false, project_id: event_management.id)
Task.find_or_create_by(title: "Confirm Sponsorship", deadline: "Mon, 28 Oct 2020", creator: "Kevin", completed: true, project_id: design_conference.id)