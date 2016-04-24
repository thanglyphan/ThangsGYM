# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Coach.create!(name: 'Roz Ily', limit: 30)
#Coach.create!(name: 'Izak Wo', limit: 30)
#Coach.create!(name: 'Hassan Hassani', limit: 30)
#Coach.create!(name: 'Enza Corde', limit: 30)
#Coach.create!(name: 'Zyzz Brah', limit: 30)


#Item.create!(program: 'Strength', price: 10, picture: 'http://hillelnorry.com/wp-content/uploads/2015/09/dumbbell-strength.jpg')
#Item.create!(program: 'Condition', price: 5, picture: 'http://bodysculptor.in/wp-content/uploads/2015/12/fasted-cardio.jpg')
#Item.create!(program: 'Weightloss', price: 20, picture: 'http://www.tanazkahenmd.com/wp-content/uploads/2013/06/weight-loss.jpg')

#a = User.find_by(:email => 'lyern52@gmail.com')
#a.admin = true
#a.save


GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Zumba', place: 'Thangs Gym Oslo', intructor: 'Thang Phan', available_slots: 40 )
GroupExercise.create!(weekday: 'Tuesday', time: '17:00', name: 'Bodypower', place: 'Thangs Gym Oslo', intructor: 'Stine Bekker', available_slots: 40 )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Stretch', place: 'Thangs Gym Oslo', intructor: 'Thor Mik', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Yoga', place: 'Thangs Gym Oslo', intructor: 'Petter Pop', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Crossfit', place: 'Thangs Gym Oslo', intructor: 'Pita Brød', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Weights', place: 'Thangs Gym Oslo', intructor: 'Hassan Ali Moh', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Meditating', place: 'Thangs Gym Oslo', intructor: 'Ragne Per', available_slots: 40 )


GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Physique Posing', place: 'Thangs Gym Oslo', intructor: 'Pamela Anderson', available_slots: 40 )
GroupExercise.create!(weekday: 'Tuesday', time: '17:00', name: 'Dancing oor all', place: 'Thangs Gym Oslo', intructor: 'Lene Alexandra', available_slots: 40 )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Zumba', place: 'Thangs Gym Oslo', intructor: 'Fisk Ene', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Raving', place: 'Thangs Gym Oslo', intructor: 'Bi Filet', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Strength for all', place: 'Thangs Gym Oslo', intructor: 'Thor Pedo', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Total core', place: 'Thangs Gym Oslo', intructor: 'Zyzz Brah', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Zumba', place: 'Thangs Gym Oslo', intructor: 'Petter Uteligger', available_slots: 40 )



GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Yoga', place: 'Thangs Gym Oslo', intructor: 'Kygo Lol', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Total core', place: 'Thangs Gym Oslo', intructor: 'Speke Kebap', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Dancing for all', place: 'Thangs Gym Oslo', intructor: 'Cray Girl', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Crossfit', place: 'Thangs Gym Oslo', intructor: 'Eva Kristine', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Physique Posing', place: 'Thangs Gym Oslo', intructor: 'Svett Jente', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Strength for all', place: 'Thangs Gym Oslo', intructor: 'Svett Gutt', available_slots: 40 )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Raving', place: 'Thangs Gym Oslo', intructor: 'Plata Nic', available_slots: 40 )



GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Core strength', place: 'Thangs Gym Oslo', intructor: 'Kygo Lol', available_slots: 40 )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Dance your life away', place: 'Thangs Gym Oslo', intructor: 'Thang Phan', available_slots: 40 )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Climbing', place: 'Thangs Gym Oslo', intructor: 'Lene Alexandra', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Core strength', place: 'Thangs Gym Oslo', intructor: 'Svett Jente', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Climbing', place: 'Thangs Gym Oslo', intructor: 'Svett Gutt', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Wrestling', place: 'Thangs Gym Oslo', intructor: 'Plata Nic', available_slots: 40 )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Tae-kwon-do', place: 'Thangs Gym Oslo', intructor: 'Pamela Anderson', available_slots: 40 )



GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Wrestling', place: 'Thangs Gym Oslo', intructor: 'Thang Phan', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Climbing', place: 'Thangs Gym Oslo', intructor: 'Pamela Anderson', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Yoga', place: 'Thangs Gym Oslo', intructor: 'Svett Gutt', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Total core', place: 'Thangs Gym Oslo', intructor: 'Lene Alexandra', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Core strength', place: 'Thangs Gym Oslo', intructor: 'Svett Jente', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Strength for all', place: 'Thangs Gym Oslo', intructor: 'Kygo Lol', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Zumba', place: 'Thangs Gym Oslo', intructor: 'Thor Pedo', available_slots: 40 )



GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Core Strength', place: 'Thangs Gym Oslo', intructor: 'Thor Pedo', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Climbing', place: 'Thangs Gym Oslo', intructor: 'Zyzz Brah', available_slots: 40 )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Dancing for all', place: 'Thangs Gym Oslo', intructor: 'Petter Uteligger', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Physique Posing', place: 'Thangs Gym Oslo', intructor: 'Ragne Per', available_slots: 40 )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Yoga', place: 'Thangs Gym Oslo', intructor: 'Hassan Ali Moh', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Meditating', place: 'Thangs Gym Oslo', intructor: 'Bi Filet', available_slots: 40 )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Raving', place: 'Thangs Gym Oslo', intructor: 'Fisk Ene', available_slots: 40 )

