# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

deductions = Deduction.create([
                                { name: 'Talking', value: 2 },
                                { name: 'Out of Seat', value: 3 },
                                { name: 'Disruptive', value: 3 },
                                { name: 'Unprepared', value: 1 },
                                { name: 'Late', value: 5 },
                                { name: 'Out of Uniform', value: 5 }
                             ])