# require the model(s)
Dir.glob(File.join('.', 'app', 'models', '*.rb')).each { |file| require file }

Comedian.delete_all
Special.delete_all

iliza = Comedian.create(name: "Iliza Shlesinger", age: 36, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
iliza.specials.create(name: "Confirmed Kills", runtime: 77, thumbnail: "https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_.jpg")
iliza.specials.create(name: "Freezing Hot", runtime: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_.jpg")
iliza.specials.create(name: "Elder Millennial", runtime: 72, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_.jpg")

tig = Comedian.create(name: "Tig Notaro", age: 47, hometown: "Jackson", profile_pic: "https://m.media-amazon.com/images/M/MV5BMTc1ODIxNjMxM15BMl5BanBnXkFtZTgwODExMTk3NzE@._V1_.jpg")
tig.specials.create(name: "Happy to Be Here", runtime: 58, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
tig.specials.create(name: "Tig Notaro: Boyish Girl Interrupted", runtime: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjc4Mzc3MDQwOF5BMl5BanBnXkFtZTgwMTI4NzcwNzE@._V1_SY1000_SX674_AL_.jpg")

ali = Comedian.create(name: "Ali Wong", age: 36, hometown: "San Francisco", profile_pic: "https://marriedbiography.com/wp-content/uploads/2018/06/Ali-Wong.jpg")
ali.specials.create(name: "Hard Knock Wife", runtime: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg")
ali.specials.create(name: "Ali Wong: Baby Cobra", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_.jpg")

cristela = Comedian.create(name: "Cristela Alonzo", age: 40, hometown: "Hidalgo", profile_pic: "https://m.media-amazon.com/images/M/MV5BZGU4NDdjMjMtOGU3Ni00NTcxLWE2OTYtZDlkN2FmZWE3YjU1XkEyXkFqcGdeQXVyMTI5MDczMTE@._V1_UX214_CR0,0,214,317_AL_.jpg")
cristela.specials.create(name: "Lower Classy", runtime: 66, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjM3NGUxNDctNjQ0Ni00OWJlLTk5ODEtMGNkYWU2YWI1OGVmXkEyXkFqcGdeQXVyMzAyNDIwNzY@._V1_.jpg")
cristela.specials.create(name: "Conan: Season 7, Episode 44", runtime: 41, thumbnail: "https://i.ytimg.com/vi/EpuGvr4fw4A/hqdefault.jpg")

jen = Comedian.create(name: "Jen Kirkman", age: 44, hometown: "Needham", profile_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Jen_Kirkman_October-2011.jpg/220px-Jen_Kirkman_October-2011.jpg")
jen.specials.create(name: "I'm Gonna Die Alone, And I Feel Fine", runtime: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BZGZlNGUzZjUtYTcwZS00ZDMwLWExMmUtZjIyZGM3NmExM2Y5XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_.jpg")
jen.specials.create(name: "Hail to the Freaks", runtime: 79, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/71LSgPjcw4L._SX355_.jpg")

cho = Comedian.create(name: "Margaret Cho", age: 50, hometown: "San Francisco", profile_pic: "https://m.media-amazon.com/images/M/MV5BZTAxYmU1ODItYWViNC00YWJiLWJiYTEtNzExYTk3MmE4NDZkXkEyXkFqcGdeQXVyNTk0ODYyMTk@._V1_UX214_CR0,0,214,317_AL_.jpg")
cho.specials.create(name: "PsyCHO", runtime: 81, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDEyNDU3NjcyNF5BMl5BanBnXkFtZTgwODcxMzg0ODE@._V1_.jpg")
cho.specials.create(name: "Notorious C.H.O.", runtime: 95, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk1OTQ4OTA3NV5BMl5BanBnXkFtZTcwOTQyNTEyMQ@@._V1_.jpg")
cho.specials.create(name: "Cho Dependent", runtime: 50, thumbnail: "https://upload.wikimedia.org/wikipedia/en/3/36/ChoDependentCover.jpg")

katherine = Comedian.create(name: "Katherine Ryan", age: 35, hometown: "Sarnia", profile_pic: "https://m.media-amazon.com/images/M/MV5BYTIzYzE0YzUtZWYyOS00NjY1LWFkZWEtYjI2MDhiNDA2NDllXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_UY317_CR6,0,214,317_AL_.jpg")
katherine.specials.create(name: "In Trouble", runtime: 63, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjMyOTIzNzItZTA0Ny00ZWRhLTk2NDMtYmQwYzUwZDllMjlhXkEyXkFqcGdeQXVyNTM0MTIyMjQ@._V1_SY1000_SX720_AL_.jpg")
katherine.specials.create(name: "Saving Your Relationship With A Baby", runtime: 7, thumbnail: "https://i.ytimg.com/vi/c_2lCLqT0CY/maxresdefault.jpg")

amanda = Comedian.create(name: "Amanda Seales", age: 37, hometown: "Inglewood", profile_pic: "https://m.media-amazon.com/images/M/MV5BNTE0NGVhMGYtMjE3YS00YjE4LTliNTctYWZmNmJjYjM2MWYyXkEyXkFqcGdeQXVyMTg3MjE4OTI@._V1_UY317_CR131,0,214,317_AL_.jpg")
amanda.specials.create(name: "I Be Knowin", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BYzVkOTIxNzctODQ0NS00N2ZmLTkwOGYtZjk2ZjE4ZTE4YWQ3XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg")
amanda.specials.create(name: "Small Doses (Podcast)", runtime: 57, thumbnail: "https://starburns.audio/wp-content/uploads/2018/02/SMALL-DOSES-big-410x410.jpg")

amy = Comedian.create(name: "Amy Schumer", age: 37, hometown: "NYC", profile_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Amy_Schumer_by_Mario_Santor.jpg/220px-Amy_Schumer_by_Mario_Santor.jpg")
amy.specials.create(name: "The Leather Special", runtime: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_.jpg")
amy.specials.create(name: "Live at the Apollo", runtime: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_.jpg")
amy.specials.create(name: "Amy Schumer: Mostly Sex Stuff", runtime: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTQxOTI2ODgxNF5BMl5BanBnXkFtZTgwMzc0NDAxMzE@._V1_.jpg")

sarah = Comedian.create(name: "Sarah Silverman", age: 48, hometown: "Bedford", profile_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Sarah_Silverman_DNC_July_2016.jpg/220px-Sarah_Silverman_DNC_July_2016.jpg")
sarah.specials.create(name: "We Are Miracles", runtime: 53, thumbnail: "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX675_AL_.jpg")
sarah.specials.create(name: "Jesus Is Magic", runtime: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")
sarah.specials.create(name: "A Speck of Dust", runtime: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjYwYjhjM2EtYjgwYS00YjkyLTllMjQtZGM1ZmFkMTQ1YmFmXkEyXkFqcGdeQXVyMzUwMjc0NTU@._V1_.jpg")

aparna = Comedian.create(name: "Aparna Nancherla", age: 37, hometown: "D.C.", profile_pic: "https://m.media-amazon.com/images/M/MV5BYWZiNmQ1ZjMtYWI0Ni00ZTRkLWFiYWEtYzYyNTY4NmMxZTcxXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_.jpg")
aparna.specials.create(name: "Just Putting It Out There ", runtime: 68, thumbnail: "https://images-na.ssl-images-amazon.com/images/I/715UjKepZiL._SY355_.jpg")
aparna.specials.create(name: "The Standups: Season 2, Episode 6", runtime: 30, thumbnail: "https://m.media-amazon.com/images/M/MV5BYmI5ODM0ZDYtYTA1Ni00MGE5LTkzZjctZDQwM2U2OWE1MGY0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")

phoebe = Comedian.create(name: "Phoebe Robinson", age: 34, hometown: "Solon", profile_pic: "https://pixel.nymag.com/imgs/daily/vulture/2018/10/11/11-phoebe-robinson.w700.h700.jpg")
phoebe.specials.create(name: "Sooo Many White Guys (Podcast)", runtime: 38, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
phoebe.specials.create(name: "2 Dope Queens", runtime: 48, thumbnail: "https://bust.com/images/articles/33833/phoebe-robinson-jessica-williams-B46A7637-11_50698.jpg")
