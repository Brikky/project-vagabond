# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create(name: 'San Francisco',
            country: 'United States of America',
            state: 'California',
            photo: 'http://foundtheworld.com/wp-content/uploads/2016/08/San-Francisco-6.jpg')
City.create(name: 'London',
            country: 'England',
            state: 'London',
            photo: 'https://media.timeout.com/images/100644443/image.jpg')
City.create(name: 'Gibraltar',
            country: 'England',
            state: 'Gibraltar',
            photo: 'http://www.visitgibraltar.gi/images/homepage_slider/df1aw_slide2.jpeg')

user1 = User.create(name: 'user1',
                    email: 'user1@example.com',
                    password: 'password',
                    current_city: 1,
                    profile_photo: '')
user2 = User.create(name: 'user2',
                    email: 'user2@example.com',
                    password: 'password',
                    current_city: 1,
                    profile_photo: '')
user3 = User.create(name: 'user3',
                    email: 'user3@example.com',
                    password: 'password',
                    current_city: 2,
                    profile_photo: '')
user4 = User.create(name: 'user4',
                    email: 'user4@example.com',
                    password: 'password',
                    current_city: 2,
                    profile_photo: '')
user5 = User.create(name: 'user5',
                    email: 'user5@example.com',
                    password: 'password',
                    current_city: 3,
                    profile_photo: '')
user6 = User.create(name: 'user6',
                    email: 'user6@example.com',
                    password: 'password',
                    current_city: 3,
                    profile_photo: '')
posts = [
  { title: 'hipster habits',
    city_id: 1,
    photo: 'https://longawkwardpause.files.wordpress.com/2016/01/bye-bye-hipster.jpg',
    text_body: "Craft beer leggings waistcoat, irony air plant glossier
    vaporware shabby chic fingerstache forage chia lyft hoodie. Biodiesel
    distillery flexitarian mustache, freegan umami squid. Hell of gluten-free
    coloring book thundercats intelligentsia. You probably haven't heard of
    them cliche heirloom, succulents glossier chillwave paleo food truck
    prism tattooed cold-pressed flexitarian poutine health goth. Sartorial
    pinterest VHS pork belly, flannel man braid irony. Selvage artisan
    leggings snackwave everyday carry live-edge vexillologist bushwick
    kombucha, four loko readymade pop-up. Jianbing tbh austin, thundercats
    bushwick polaroid messenger bag lyft listicle jean shorts leggings
    truffaut." },
  { title: 'hipster habits',
    city_id: 1,
    photo: 'https://longawkwardpause.files.wordpress.com/2016/01/bye-bye-hipster.jpg',
    text_body: "Craft beer leggings waistcoat, irony air plant glossier
    vaporware shabby chic fingerstache forage chia lyft hoodie. Biodiesel
    distillery flexitarian mustache, freegan umami squid. Hell of gluten-free
    coloring book thundercats intelligentsia. You probably haven't heard of
    them cliche heirloom, succulents glossier chillwave paleo food truck
    prism tattooed cold-pressed flexitarian poutine health goth. Sartorial
    pinterest VHS pork belly, flannel man braid irony. Selvage artisan
    leggings snackwave everyday carry live-edge vexillologist bushwick
    kombucha, four loko readymade pop-up. Jianbing tbh austin, thundercats
    bushwick polaroid messenger bag lyft listicle jean shorts leggings
    truffaut." },
  { title: 'hipster habits',
    city_id: 1,
    photo: 'https://longawkwardpause.files.wordpress.com/2016/01/bye-bye-hipster.jpg',
    text_body: "Craft beer leggings waistcoat, irony air plant glossier
    vaporware shabby chic fingerstache forage chia lyft hoodie. Biodiesel
    distillery flexitarian mustache, freegan umami squid. Hell of gluten-free
    coloring book thundercats intelligentsia. You probably haven't heard of
    them cliche heirloom, succulents glossier chillwave paleo food truck
    prism tattooed cold-pressed flexitarian poutine health goth. Sartorial
    pinterest VHS pork belly, flannel man braid irony. Selvage artisan
    leggings snackwave everyday carry live-edge vexillologist bushwick
    kombucha, four loko readymade pop-up. Jianbing tbh austin, thundercats
    bushwick polaroid messenger bag lyft listicle jean shorts leggings
    truffaut." },
  { title: 'hipster habits',
    city_id: 1,
    photo: 'https://longawkwardpause.files.wordpress.com/2016/01/bye-bye-hipster.jpg',
    text_body: "Craft beer leggings waistcoat, irony air plant glossier
    vaporware shabby chic fingerstache forage chia lyft hoodie. Biodiesel
    distillery flexitarian mustache, freegan umami squid. Hell of gluten-free
    coloring book thundercats intelligentsia. You probably haven't heard of
    them cliche heirloom, succulents glossier chillwave paleo food truck
    prism tattooed cold-pressed flexitarian poutine health goth. Sartorial
    pinterest VHS pork belly, flannel man braid irony. Selvage artisan
    leggings snackwave everyday carry live-edge vexillologist bushwick
    kombucha, four loko readymade pop-up. Jianbing tbh austin, thundercats
    bushwick polaroid messenger bag lyft listicle jean shorts leggings
    truffaut." },
  { title: 'hipster habits',
    city_id: 1,
    photo: 'https://longawkwardpause.files.wordpress.com/2016/01/bye-bye-hipster.jpg',
    text_body: "Craft beer leggings waistcoat, irony air plant glossier
    vaporware shabby chic fingerstache forage chia lyft hoodie. Biodiesel
    distillery flexitarian mustache, freegan umami squid. Hell of gluten-free
    coloring book thundercats intelligentsia. You probably haven't heard of
    them cliche heirloom, succulents glossier chillwave paleo food truck
    prism tattooed cold-pressed flexitarian poutine health goth. Sartorial
    pinterest VHS pork belly, flannel man braid irony. Selvage artisan
    leggings snackwave everyday carry live-edge vexillologist bushwick
    kombucha, four loko readymade pop-up. Jianbing tbh austin, thundercats
    bushwick polaroid messenger bag lyft listicle jean shorts leggings
    truffaut." },
  { title: 'lorem ipsum dolor',
    city_id: 1,
    photo: 'http://blog.dominictrumfio.com/wp-content/uploads/2015/08/Lorem-Ipsum-2.jpg',
    text_body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
  ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
  voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
  sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
  mollit anim id est laborum.' },
  { title: 'lorem ipsum dolor',
    city_id: 1,
    photo: 'http://blog.dominictrumfio.com/wp-content/uploads/2015/08/Lorem-Ipsum-2.jpg',
    text_body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
    do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
       minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
        voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
         sint occaecat cupidatat non proident, sunt in culpa qui officia
        deserunt mollit anim id est laborum.' },
  { title: 'lorem ipsum dolor',
    city_id: 1,
    photo: 'http://blog.dominictrumfio.com/wp-content/uploads/2015/08/Lorem-Ipsum-2.jpg',
    text_body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
     do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
        minim veniam, quis nostrud exercitation ullamco laboris nisi ut
        aliquip ex ea commodo consequat. Duis aute irure dolor in
        reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
        culpa qui officia deserunt mollit anim id est laborum.' },
  { title: 'lorem ipsum dolor',
    city_id: 1,
    photo: 'http://blog.dominictrumfio.com/wp-content/uploads/2015/08/Lorem-Ipsum-2.jpg',
    text_body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
     do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
        minim veniam, quis nostrud exercitation ullamco laboris nisi ut
        aliquip ex ea commodo consequat. Duis aute irure dolor in
        reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
        culpa qui officia deserunt mollit anim id est laborum.' },
  { title: 'lorem ipsum dolor',
    city_id: 1,
    photo: 'http://blog.dominictrumfio.com/wp-content/uploads/2015/08/Lorem-Ipsum-2.jpg',
    text_body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
     do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
        minim veniam, quis nostrud exercitation ullamco laboris nisi ut
        aliquip ex ea commodo consequat. Duis aute irure dolor in
        reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
        culpa qui officia deserunt mollit anim id est laborum.' },
  { title: 'Boat of Blackbeard',
    city_id: 2,
    photo: 'http://roundtherocktx.com/wp-content/uploads/2015/06/pirate.png',
    text_body: "Salmagundi splice the main brace ahoy come about Yellow Jack.
Black jack yo-ho-ho carouser cable rigging. Gally swing the lead gaff
measured fer yer chains grog blossom. To go on account draught six
pounders chandler hulk. Strike colors hardtack scuttle galleon ahoy. Haul
wind spike yo-ho-ho spirits maroon. Crow's nest warp salmagundi scurvy
clipper. Rutters jib Sea Legs ho log.
Splice the main brace bilge bucko American Main jolly boat. Cat o'nine
tails warp gibbet snow schooner. Chase bounty jack tackle belay.
Topgallant flogging dance the hempen jig marooned list. Pressgang
starboard Letter of Marque hardtack chase. " },
  { title: 'Boat of Blackbeard',
    city_id: 2,
    photo: 'http://roundtherocktx.com/wp-content/uploads/2015/06/pirate.png',
    text_body: "Salmagundi splice the main brace ahoy come about Yellow Jack.
    Black jack yo-ho-ho carouser cable rigging. Gally swing the lead gaff
    measured fer yer chains grog blossom. To go on account draught six
    pounders chandler hulk. Strike colors hardtack scuttle galleon ahoy. Haul
    wind spike yo-ho-ho spirits maroon. Crow's nest warp salmagundi scurvy
    clipper. Rutters jib Sea Legs ho log.
    Splice the main brace bilge bucko American Main jolly boat. Cat o'nine
    tails warp gibbet snow schooner. Chase bounty jack tackle belay.
    Topgallant flogging dance the hempen jig marooned list. Pressgang
    starboard Letter of Marque hardtack chase. " },
  { title: 'Boat of Blackbeard',
    city_id: 2,
    photo: 'http://roundtherocktx.com/wp-content/uploads/2015/06/pirate.png',
    text_body: "Salmagundi splice the main brace ahoy come about Yellow Jack.
    Black jack yo-ho-ho carouser cable rigging. Gally swing the lead gaff
    measured fer yer chains grog blossom. To go on account draught six
    pounders chandler hulk. Strike colors hardtack scuttle galleon ahoy. Haul
    wind spike yo-ho-ho spirits maroon. Crow's nest warp salmagundi scurvy
    clipper. Rutters jib Sea Legs ho log.
    Splice the main brace bilge bucko American Main jolly boat. Cat o'nine
    tails warp gibbet snow schooner. Chase bounty jack tackle belay.
    Topgallant flogging dance the hempen jig marooned list. Pressgang
    starboard Letter of Marque hardtack chase. " },
  { title: 'Boat of Blackbeard',
    city_id: 2,
    photo: 'http://roundtherocktx.com/wp-content/uploads/2015/06/pirate.png',
    text_body: "Salmagundi splice the main brace ahoy come about Yellow Jack.
    Black jack yo-ho-ho carouser cable rigging. Gally swing the lead gaff
    measured fer yer chains grog blossom. To go on account draught six
    pounders chandler hulk. Strike colors hardtack scuttle galleon ahoy. Haul
    wind spike yo-ho-ho spirits maroon. Crow's nest warp salmagundi scurvy
    clipper. Rutters jib Sea Legs ho log.
    Splice the main brace bilge bucko American Main jolly boat. Cat o'nine
    tails warp gibbet snow schooner. Chase bounty jack tackle belay.
    Topgallant flogging dance the hempen jig marooned list. Pressgang
    starboard Letter of Marque hardtack chase. " },
  { title: 'Boat of Blackbeard',
    city_id: 2,
    photo: 'http://roundtherocktx.com/wp-content/uploads/2015/06/pirate.png',
    text_body: "Salmagundi splice the main brace ahoy come about Yellow Jack.
    Black jack yo-ho-ho carouser cable rigging. Gally swing the lead gaff
    measured fer yer chains grog blossom. To go on account draught six
    pounders chandler hulk. Strike colors hardtack scuttle galleon ahoy. Haul
    wind spike yo-ho-ho spirits maroon. Crow's nest warp salmagundi scurvy
    clipper. Rutters jib Sea Legs ho log.
    Splice the main brace bilge bucko American Main jolly boat. Cat o'nine
    tails warp gibbet snow schooner. Chase bounty jack tackle belay.
    Topgallant flogging dance the hempen jig marooned list. Pressgang
    starboard Letter of Marque hardtack chase. " },
  { title: 'Soft Kitty',
    city_id: 2,
    photo: 'http://all-that-is-interesting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-minskin-3.jpg',
    text_body: "Bleghbleghvomit my furball really tie the room together knock
  dish off table head butt cant eat out of my own dish leave hair
  everywhere. Stares at human while pushing stuff off a table. Purr sit in
  window and stare ooo, a bird! yum. Please stop looking at your phone and
  pet me howl on top of tall thing. Eat prawns daintily with a claw then
  lick paws clean wash down prawns with a lap of carnation milk then retire
  to the warmest spot on the couch to claw at the fabric before taking a
  catnap jump off balcony, onto stranger's head present belly, scratch
  hand when stroked purr for no reason or meow meow, i tell my human.
  Asdflkjaertvlkjasntvkjn (sits on keyboard). Bathe private parts with
  tongue then lick owner's face. With tail in the air lounge in doorway
  sit on the laptop. I like big cats and i can not lie tuxedo cats always
  looking dapper but put toy mouse in food bowl run out of litter box at
  full speed scratch the furniture and ears back wide eyed lick the curtain
  just to be annoying, kick up litter." },
  { title: 'Soft Kitty',
    city_id: 2,
    photo: 'http://all-that-is-interesting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-minskin-3.jpg',
    text_body: "Bleghbleghvomit my furball really tie the room together knock
    dish off table head butt cant eat out of my own dish leave hair
    everywhere. Stares at human while pushing stuff off a table. Purr sit in
    window and stare ooo, a bird! yum. Please stop looking at your phone and
    pet me howl on top of tall thing. Eat prawns daintily with a claw then
    lick paws clean wash down prawns with a lap of carnation milk then retire
    to the warmest spot on the couch to claw at the fabric before taking a
    catnap jump off balcony, onto stranger's head present belly, scratch
    hand when stroked purr for no reason or meow meow, i tell my human.
    Asdflkjaertvlkjasntvkjn (sits on keyboard). Bathe private parts with
    tongue then lick owner's face. With tail in the air lounge in doorway
    sit on the laptop. I like big cats and i can not lie tuxedo cats always
    looking dapper but put toy mouse in food bowl run out of litter box at
    full speed scratch the furniture and ears back wide eyed lick the curtain
    just to be annoying, kick up litter." },
  { title: 'Soft Kitty',
    city_id: 2,
    photo: 'http://all-that-is-interesting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-minskin-3.jpg',
    text_body: "Bleghbleghvomit my furball really tie the room together knock
    dish off table head butt cant eat out of my own dish leave hair
    everywhere. Stares at human while pushing stuff off a table. Purr sit in
    window and stare ooo, a bird! yum. Please stop looking at your phone and
    pet me howl on top of tall thing. Eat prawns daintily with a claw then
    lick paws clean wash down prawns with a lap of carnation milk then retire
    to the warmest spot on the couch to claw at the fabric before taking a
    catnap jump off balcony, onto stranger's head present belly, scratch
    hand when stroked purr for no reason or meow meow, i tell my human.
    Asdflkjaertvlkjasntvkjn (sits on keyboard). Bathe private parts with
    tongue then lick owner's face. With tail in the air lounge in doorway
    sit on the laptop. I like big cats and i can not lie tuxedo cats always
    looking dapper but put toy mouse in food bowl run out of litter box at
    full speed scratch the furniture and ears back wide eyed lick the curtain
    just to be annoying, kick up litter." },
  { title: 'Soft Kitty',
    city_id: 2,
    photo: 'http://all-that-is-interesting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-minskin-3.jpg',
    text_body: "Bleghbleghvomit my furball really tie the room together knock
    dish off table head butt cant eat out of my own dish leave hair
    everywhere. Stares at human while pushing stuff off a table. Purr sit in
    window and stare ooo, a bird! yum. Please stop looking at your phone and
    pet me howl on top of tall thing. Eat prawns daintily with a claw then
    lick paws clean wash down prawns with a lap of carnation milk then retire
    to the warmest spot on the couch to claw at the fabric before taking a
    catnap jump off balcony, onto stranger's head present belly, scratch
    hand when stroked purr for no reason or meow meow, i tell my human.
    Asdflkjaertvlkjasntvkjn (sits on keyboard). Bathe private parts with
    tongue then lick owner's face. With tail in the air lounge in doorway
    sit on the laptop. I like big cats and i can not lie tuxedo cats always
    looking dapper but put toy mouse in food bowl run out of litter box at
    full speed scratch the furniture and ears back wide eyed lick the curtain
    just to be annoying, kick up litter." },
  { title: 'Soft Kitty',
    city_id: 2,
    photo: 'http://all-that-is-interesting.com/wordpress/wp-content/uploads/2012/08/ugly-cat-minskin-3.jpg',
    text_body: "Bleghbleghvomit my furball really tie the room together knock
    dish off table head butt cant eat out of my own dish leave hair
    everywhere. Stares at human while pushing stuff off a table. Purr sit in
    window and stare ooo, a bird! yum. Please stop looking at your phone and
    pet me howl on top of tall thing. Eat prawns daintily with a claw then
    lick paws clean wash down prawns with a lap of carnation milk then retire
    to the warmest spot on the couch to claw at the fabric before taking a
    catnap jump off balcony, onto stranger's head present belly, scratch
    hand when stroked purr for no reason or meow meow, i tell my human.
    Asdflkjaertvlkjasntvkjn (sits on keyboard). Bathe private parts with
    tongue then lick owner's face. With tail in the air lounge in doorway
    sit on the laptop. I like big cats and i can not lie tuxedo cats always
    looking dapper but put toy mouse in food bowl run out of litter box at
    full speed scratch the furniture and ears back wide eyed lick the curtain
    just to be annoying, kick up litter." },
  { title: 'Roar Roar Me a Dinosaur',
    city_id: 3,
    photo: 'http://www.factslides.com/imgs/Chicken-TRex.jpg',
    text_body: "Ornithopsis Supersaurus Parasaurolophus Libycosaurus
Loricosaurus Tatisaurus Pekinosaurus Therosaurus Philovenator Brohisaurus
Dinheirosaurus Hylosaurus Gryposaurus Rocasaurus Xiaotingia Coelophysis
Hanssuesia Jeholornis Angulomastacator Charonosaurus Proplanicoxa
Chondrosteus Sarahsaurus Patagosaurus Prodeinodon Muttaburrasaurus
Zuolong Dasygnathus Tylosteus Protognathus Plateosaurus Kukufeldia
Paranthodon Marisaurus Crosbysaurus Lamplughsaura Coronosaurus
Phaedrolosaurus Camptonotus Dinheirosaurus Podokesaurus Calamospondylus
Asiaceratops Pamparaptor Omosaurus Eoabelisaurus Indosuchus Qingxiusaurus
Zhuchengtyrannus Tanystropheus.
" },
  { title: 'Roar Roar Me a Dinosaur',
    city_id: 3,
    photo: 'http://www.factslides.com/imgs/Chicken-TRex.jpg',
    text_body: "Ornithopsis Supersaurus Parasaurolophus Libycosaurus
    Loricosaurus Tatisaurus Pekinosaurus Therosaurus Philovenator Brohisaurus
    Dinheirosaurus Hylosaurus Gryposaurus Rocasaurus Xiaotingia Coelophysis
    Hanssuesia Jeholornis Angulomastacator Charonosaurus Proplanicoxa
    Chondrosteus Sarahsaurus Patagosaurus Prodeinodon Muttaburrasaurus
    Zuolong Dasygnathus Tylosteus Protognathus Plateosaurus Kukufeldia
    Paranthodon Marisaurus Crosbysaurus Lamplughsaura Coronosaurus
    Phaedrolosaurus Camptonotus Dinheirosaurus Podokesaurus Calamospondylus
    Asiaceratops Pamparaptor Omosaurus Eoabelisaurus Indosuchus Qingxiusaurus
    Zhuchengtyrannus Tanystropheus." },
  { title: 'Roar Roar Me a Dinosaur',
    city_id: 3,
    photo: 'http://www.factslides.com/imgs/Chicken-TRex.jpg',
    text_body: "Ornithopsis Supersaurus Parasaurolophus Libycosaurus
    Loricosaurus Tatisaurus Pekinosaurus Therosaurus Philovenator Brohisaurus
    Dinheirosaurus Hylosaurus Gryposaurus Rocasaurus Xiaotingia Coelophysis
    Hanssuesia Jeholornis Angulomastacator Charonosaurus Proplanicoxa
    Chondrosteus Sarahsaurus Patagosaurus Prodeinodon Muttaburrasaurus
    Zuolong Dasygnathus Tylosteus Protognathus Plateosaurus Kukufeldia
    Paranthodon Marisaurus Crosbysaurus Lamplughsaura Coronosaurus
    Phaedrolosaurus Camptonotus Dinheirosaurus Podokesaurus Calamospondylus
    Asiaceratops Pamparaptor Omosaurus Eoabelisaurus Indosuchus Qingxiusaurus
    Zhuchengtyrannus Tanystropheus." },
  { title: 'Roar Roar Me a Dinosaur',
    city_id: 3,
    photo: 'http://www.factslides.com/imgs/Chicken-TRex.jpg',
    text_body: "Ornithopsis Supersaurus Parasaurolophus Libycosaurus
    Loricosaurus Tatisaurus Pekinosaurus Therosaurus Philovenator Brohisaurus
    Dinheirosaurus Hylosaurus Gryposaurus Rocasaurus Xiaotingia Coelophysis
    Hanssuesia Jeholornis Angulomastacator Charonosaurus Proplanicoxa
    Chondrosteus Sarahsaurus Patagosaurus Prodeinodon Muttaburrasaurus
    Zuolong Dasygnathus Tylosteus Protognathus Plateosaurus Kukufeldia
    Paranthodon Marisaurus Crosbysaurus Lamplughsaura Coronosaurus
    Phaedrolosaurus Camptonotus Dinheirosaurus Podokesaurus Calamospondylus
    Asiaceratops Pamparaptor Omosaurus Eoabelisaurus Indosuchus Qingxiusaurus
    Zhuchengtyrannus Tanystropheus." },
  { title: 'Roar Roar Me a Dinosaur',
    city_id: 3,
    photo: 'http://www.factslides.com/imgs/Chicken-TRex.jpg',
    text_body: "Ornithopsis Supersaurus Parasaurolophus Libycosaurus
    Loricosaurus Tatisaurus Pekinosaurus Therosaurus Philovenator Brohisaurus
    Dinheirosaurus Hylosaurus Gryposaurus Rocasaurus Xiaotingia Coelophysis
    Hanssuesia Jeholornis Angulomastacator Charonosaurus Proplanicoxa
    Chondrosteus Sarahsaurus Patagosaurus Prodeinodon Muttaburrasaurus
    Zuolong Dasygnathus Tylosteus Protognathus Plateosaurus Kukufeldia
    Paranthodon Marisaurus Crosbysaurus Lamplughsaura Coronosaurus
    Phaedrolosaurus Camptonotus Dinheirosaurus Podokesaurus Calamospondylus
    Asiaceratops Pamparaptor Omosaurus Eoabelisaurus Indosuchus Qingxiusaurus
    Zhuchengtyrannus Tanystropheus." },
  { title: 'Space Ships in the Sky',
    city_id: 3,
    photo: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true',
    text_body: "OK, if everyone's finished being stupid. Belligerent and
  numerous. That's a popular name today. Little 'e', big 'B'? Say it in
  Russian! Bender! Ship! Stop bickering or I'm going to come back there and
  change your opinions manually!
  I'll tell them you went down prying the wedding ring off his cold, dead
  finger. Hey, guess what you're accessories to. Bender, I didn't know you
  liked cooking. That's so cute. Stop it, stop it. It's fine. I will
  'destroy' you!" },
  { title: 'Space Ships in the Sky',
    city_id: 3,
    photo: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true',
    text_body: "OK, if everyone's finished being stupid. Belligerent and
    numerous. That's a popular name today. Little 'e', big 'B'? Say it in
    Russian! Bender! Ship! Stop bickering or I'm going to come back there and
    change your opinions manually!
    I'll tell them you went down prying the wedding ring off his cold, dead
    finger. Hey, guess what you're accessories to. Bender, I didn't know you
    liked cooking. That's so cute. Stop it, stop it. It's fine. I will
    'destroy' you!" },
  { title: 'Space Ships in the Sky',
    city_id: 3,
    photo: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true',
    text_body: "OK, if everyone's finished being stupid. Belligerent and
    numerous. That's a popular name today. Little 'e', big 'B'? Say it in
    Russian! Bender! Ship! Stop bickering or I'm going to come back there and
    change your opinions manually!
    I'll tell them you went down prying the wedding ring off his cold, dead
    finger. Hey, guess what you're accessories to. Bender, I didn't know you
    liked cooking. That's so cute. Stop it, stop it. It's fine. I will
    'destroy' you!" },
  { title: 'Space Ships in the Sky',
    city_id: 3,
    photo: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true',
    text_body: "OK, if everyone's finished being stupid. Belligerent and
    numerous. That's a popular name today. Little 'e', big 'B'? Say it in
    Russian! Bender! Ship! Stop bickering or I'm going to come back there and
    change your opinions manually!
    I'll tell them you went down prying the wedding ring off his cold, dead
    finger. Hey, guess what you're accessories to. Bender, I didn't know you
    liked cooking. That's so cute. Stop it, stop it. It's fine. I will
    'destroy' you!" },
  { title: 'Space Ships in the Sky',
    city_id: 3,
    photo: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true',
    text_body: "OK, if everyone's finished being stupid. Belligerent and
    numerous. That's a popular name today. Little 'e', big 'B'? Say it in
    Russian! Bender! Ship! Stop bickering or I'm going to come back there and
    change your opinions manually!
    I'll tell them you went down prying the wedding ring off his cold, dead
    finger. Hey, guess what you're accessories to. Bender, I didn't know you
    liked cooking. That's so cute. Stop it, stop it. It's fine. I will
    'destroy' you!" }
]
posts.shuffle!
user1.posts.create(posts[0...5])
user2.posts.create(posts[5...10])
user3.posts.create(posts[10...15])
user4.posts.create(posts[15...20])
user5.posts.create(posts[20...25])
user6.posts.create(posts[25...29])
