# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.delete_all
Image.reset_pk_sequence
Image.create([
                 {name: 'David Bowie - Aladdin Sane', file: 'David Bowie - Aladdin Sane.jpg', theme_id: 3},
                 {name: 'Pink Floyd - The Dark Side of the Moon', file: 'Pink Floyd - The Dark Side of the Moon.jpg', theme_id: 2},
                 {name: 'Papa Roach - Who Do You Trust.jpg', file: 'Papa Roach - Who Do You Trust.jpg', theme_id: 4},
                 {name: 'Panic! At the Disco - Death of a Bachelor', file: 'Panic! At the Disco - Death of a Bachelor.jpg', theme_id: 1},
                 {name: 'Joy Division - Unknown Pleasures', file: 'Joy Division - Unknown Pleasures.jpg', theme_id: 2},
                 {name: 'Klaxons - Surfing the Void', file: 'Klaxons - Surfing the Void.jpg', theme_id: 3},
                 {name: 'Enter Shikari - A Flash Flood of Colour', file: 'Enter Shikari - A Flash Flood of Colour.jpg', theme_id: 4},
                 {name: 'Twenty One Pilots - Blurryface', file: 'Twenty One Pilots - Blurryface.jpg', theme_id: 4},
                 {name: 'Eels - End Times', file: 'Eels - End Times.jpg', theme_id: 4},
                 {name: 'Muse - The 2nd Law', file: 'Muse - The 2nd Law.jpg', theme_id: 4},
                 {name: 'Biffy Clyro - Opposites', file: 'Biffy Clyro - Opposites.jpg', theme_id: 4},
                 {name: 'Bring Me the Horizon - That\'s the Spirit.jpg', file: 'Bring Me the Horizon - That\'s the Spirit.jpg', theme_id: 4},
                 {name: 'Crown the Empire - Retrograde', file: 'Crown the Empire - Retrograde.jpg', theme_id: 4},
                 {name: 'Green Day - Dookie', file: 'Green Day - Dookie.jpg', theme_id: 4},
                 {name: 'My Chemical Romance - Three Cheers for Sweet Revenge', file: 'My Chemical Romance - Three Cheers for Sweet Revenge.jpg', theme_id: 4},
                 {name: 'Nothing But Thieves - Nothing But Thieves', file: 'Nothing But Thieves - Nothing But Thieves.jpg', theme_id: 4},
                 {name: 'The Beatles - Abbey Road', file: 'The Beatles - Abbey Road.jpg', theme_id: 3},
                 {name: 'The Velvet Underground - The Velvet Underground & Nico', file: 'The Velvet Underground - The Velvet Underground & Nico.jpg', theme_id: 2},
                 {name: 'The Beatles - Sgt. Pepper\'s Lonely Hearts Club Band', file: 'The Beatles - Sgt. Pepper\'s Lonely Hearts Club Band.jpg', theme_id: 2},
                 {name: 'Led Zeppelin - Led Zeppelin', file: 'Led Zeppelin - Led Zeppelin.jpg', theme_id: 2},
                 {name: 'The Clash - London Calling', file: 'The Clash - London Calling.jpg', theme_id: 3},
                 {name: 'Bob Dylan - Bringing It All Back Home', file: 'Bob Dylan - Bringing It All Back Home.jpg', theme_id: 3},
             ])
Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
                 {name: "-----"},      # 1 Нет темы
                 {name: "The most iconic album cover of all time"},      # 2
                 {name: "The best album cover photo"},      # 3
                 {name: "The best modern album cover"},      # 4
             ])
User.delete_all
User.reset_pk_sequence
User.create([
                {name: "Kate", email: "kate@gmail.com", password: BCrypt::Password.create("111111").to_s, password_confirmation: "111111"},
            ])
