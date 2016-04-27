# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Coach.create!(name: 'Roz Ily', limit: 30)
Coach.create!(name: 'Izak Wo', limit: 30)
Coach.create!(name: 'Hassan Hassani', limit: 30)
Coach.create!(name: 'Enza Corde', limit: 30)
Coach.create!(name: 'Zyzz Brah', limit: 30)


Item.create!(program: 'Strength', price: 10, picture: 'http://hillelnorry.com/wp-content/uploads/2015/09/dumbbell-strength.jpg')
Item.create!(program: 'Condition', price: 5, picture: 'http://bodysculptor.in/wp-content/uploads/2015/12/fasted-cardio.jpg')
Item.create!(program: 'Weightloss', price: 20, picture: 'http://www.tanazkahenmd.com/wp-content/uploads/2013/06/weight-loss.jpg')

a = User.find_by(:email => 'lyern52@gmail.com')
a.admin = true
a.save


GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Cycling4x4', place: 'Thangs Gym Oslo', intructor: 'Thang Phan', available_slots: 40, info: 'En hard og effektiv kondisjonstime med 4x4 intervaller på sykkel. Denne timen passer for deg som vil ta formen til neste nivå. For moderat til godt trente')
GroupExercise.create!(weekday: 'Tuesday', time: '17:00', name: 'Cage Challenge', place: 'Thangs Gym Oslo', intructor: 'Stine Bekker', available_slots: 40, info: 'Lær deg triksene i studioburet og få maks utbytte av effektiv og funksjonell trening i vår lekegrind! En rå og morsom time, intensiv og variert styrketrening. Morsomt, enkelt og tøft!' )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'YogaFlow', place: 'Thangs Gym Oslo', intructor: 'Thor Mik', available_slots: 40, info: 'Yoga class focusing on agility, strength and balance. Positions and series from different yoga traditions such as ashtanga yoga, hatha and viryah.' )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'TotalCore', place: 'Thangs Gym Oslo', intructor: 'Petter Pop', available_slots: 40, info: 'En styrketime med fokus på mage, rygg og kjernemusklatur. Ved å jobbe med både dynamiske og statiske øvelser gir vi deg muligheten til en sterkere kjerne og bedre holdning. Timen passer for alle.' )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Pilates', place: 'Thangs Gym Oslo', intructor: 'Pita Brød', available_slots: 40, info: 'Styrketrening etter pilatesmetoden hvor pusten spiller en stor rolle. Du jobber med egen kroppsvekt og har muligheten til å forbedre balanse, styrke og bevegelighet' )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Kundalini Yoga', place: 'Thangs Gym Oslo', intructor: 'Hassan Ali Moh', available_slots: 40, info: 'En effektiv, helhetlig og komplett yogaform. Opplev en dynamisk, morsom og inspirerende treningsform hvor du i tillegg til fysisk trening får erfare økt mental og emosjonell helse, samt utvikle en dypere kontakt med dine indre ressurser. På Kundalini Yoga settes fokus på mindfulness og stressmestring gjennom meditasjon og yogaøvelser som styrker nerve-, hormon- og immunsystemet. Hver time er annerledes med et nytt og spennende tema som vi jobber ut i fra. Timen passer alle.' )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Leg Day', place: 'Thangs Gym Oslo', intructor: 'Ragne Per', available_slots: 40, info: '30 intensive minutter med varierte øvelser på bein og setemuskulatur. Møt ferdig oppvarmet til timen. Passer for alle' )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Interval Running', place: 'Thangs Gym Oslo', intructor: 'Pamela Anderson', available_slots: 40, info: 'Få bedre kondisjon og bli med på løpetime på tredemølle. Vi varierer mellom ulike intervaller. Timen passer for alle.' )
GroupExercise.create!(weekday: 'Tuesday', time: '17:00', name: 'Flexible', place: 'Thangs Gym Oslo', intructor: 'Lene Alexandra', available_slots: 40, info: 'Time med dynamisk bevegelighetstrening og enkle strekkøvelser for de store muskelgruppene. Her vil du få bedre bevegelighet i kroppen, uansett utgangspunkt. Timen passer for alle og er fin å kombinere med andre timer.'  )
GroupExercise.create!(weekday: 'Wednesday', time: '17:00', name: 'Styrkesirkel', place: 'Thangs Gym Oslo', intructor: 'Fisk Ene', available_slots: 40, info: 'Her får du trent musklenes utholdenhet etter intervalltreningsprinsippet. Vi rullerer på ulike stasjoner med fokus på forskjellige muskelgrupper, og får trent hele kroppen.'  )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Functional Strength', place: 'Thangs Gym Oslo', intructor: 'Bi Filet', available_slots: 40, info: 'In this functional strength class, we use our own body weight, dumbbells, barbells and step in different exercises. We focus on strengthening the large muscle groups, and also to improve balance, stability, flexibility and core muscles.'  )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Foamroll', place: 'Thangs Gym Oslo', intructor: 'Thor Pedo', available_slots: 40, info: 'Tøying- og bevegelighetstrening med foamroll på triggerpunkter. Timen passer godt å kombinere med andre timer både som oppvarming og nedtrapping til styretrenig og utholdenhetstrening. Timen passer for alle'  )
GroupExercise.create!(weekday: 'Saturday', time: '17:00', name: 'Kettlebell', place: 'Thangs Gym Oslo', intructor: 'Zyzz Brah', available_slots: 40, info: 'En tøff og effektiv styrke- og kondisjonstime. Funksjonell og enkel trening hvor du får trent styrke, kondisjon og bevegelighet.'  )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Boxing Interval', place: 'Thangs Gym Oslo', intructor: 'Petter Uteligger', available_slots: 40, info: 'Intervalltrening for kondisjon og styrke. Grunnleggende slag og spark fra boksing/kickboksing, samt løp, hopp. Deler av timen jobber to og to sammen med trening på slag og spark. Utstyr er boksehansker og sparkeputer. En tøff og intensiv boksetime hvor du jobber i intervaller med kondisjon og styrke. Grunnleggende slag og spark fra boksing og kickboksing. Timen varierer med å jobbe én og én og i par og passer for moderat til godt trente.'  )
GroupExercise.create!(weekday: 'Thursday', time: '17:00', name: 'Functional Strength', place: 'Thangs Gym Oslo', intructor: 'Bi Filet', available_slots: 40, info: 'In this functional strength class, we use our own body weight, dumbbells, barbells and step in different exercises. We focus on strengthening the large muscle groups, and also to improve balance, stability, flexibility and core muscles.'  )
GroupExercise.create!(weekday: 'Friday', time: '17:00', name: 'Power Yoga', place: 'Thangs Gym Oslo', intructor: 'Kygo Lol', available_slots: 40, info: 'Power Yoga er en dynamisk yoga, som vil gi deg bedre koordinasjon, balanse og core-styrke. Timen passer for alle og er et godt supplement for å prestere bedre med annen trening.'  )
GroupExercise.create!(weekday: 'Sunday', time: '17:00', name: 'Step Basic', place: 'Thangs Gym Oslo', intructor: 'Speke Kebap', available_slots: 40, info: 'A cardio class with easy step combinations, using a step box. The height of the box can be adjusted for higher or lower intensity. This class is suitable for beginners to well-trained persons.'  )
GroupExercise.create!(weekday: 'Tuesday', time: '17:00', name: 'Cycling4x4 Pulse', place: 'Thangs Gym Oslo', intructor: 'Cray Girl', available_slots: 40, info: 'En hard og effektiv kondisjonstime med 4x4 intervaller på sykkel. Denne timen passer for deg som vil ta formen til neste nivå. For moderat til godt trente'  )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Ultimate Circle', place: 'Thangs Gym Oslo', intructor: 'Eva Kristine', available_slots: 40, info: 'Intensiv styrketrening med utstyr og egen kroppsvekt. Du jobber i stasjoner med forskjellige styrkeøvelser på hver stasjon. Timen passer for alle.'  )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Hip Hop', place: 'Thangs Gym Oslo', intructor: 'Svett Jente', available_slots: 40, info: 'En kul og tøff dansetime med koreografi og musikk til hip hop-musikk'  )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Basisball RAW', place: 'Thangs Gym Oslo', intructor: 'Svett Gutt', available_slots: 40, info: 'Functional, inspiring and effective strength training with a Basic Ball - a weight ball with handles. We use the Basic ball to work on several areas, like the large muscle groups, balance, stability, flexibility and the core muscles.'  )
GroupExercise.create!(weekday: 'Monday', time: '17:00', name: 'Corebar HIT', place: 'Thangs Gym Oslo', intructor: 'Plata Nic', available_slots: 40, info: 'Den ultimate «ut av komfortsona» intervalltreningstimen for deg som er godt til svært godt trent. Timen inneholder full pakke med kondisjon, styrke, balanse og bevegelighet hvor vi spesielt jobber med coremuskulaturen. Dette er et fyrverkeri av en time med høyt tempo og fengende musikk samtidig som den er enkel å følge. Gjennom hele timen brukes COREbaren™, en vektet bøyd treningsstang.'  )

