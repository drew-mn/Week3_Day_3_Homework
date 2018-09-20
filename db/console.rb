require("pry")
require_relative("../models/artist")
require_relative("../models/albums")

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({"name" => "Eminem"})
artist1.save()

# current top 5 albums

album1 = Album.new({
  "title" => "Kamikaze",
  "genre" => "Rap",
  "artist_id" => artist1.id
  })
album1.save()

artist2 = Artist.new({"name" => "Various"})
artist2.save()

album2 = Album.new({
  "title" => "The Greatest Showman",
  "genre" => "Motion Picture Soundtrack",
  "artist_id" => artist2.id
  })
album2.save()

artist3 = Artist.new({"name" => "Paul McCartney"})
artist3.save()

album3 = Album.new({
  "title" => "Egypt Station",
  "genre" => "Rock",
  "artist_id" => artist3.id
  })
album3.save()

artist4 = Artist.new({"name" => "Various"})
artist4.save()

album4 = Album.new({
  "title" => "Mamma Mia!",
  "genre" => "Motion Picture Soundtrack",
  "artist_id" => artist4.id
  })
album4.save()

artist5 = Artist.new({"name" => "Ariana Grande"})
artist5.save()

album5 = Album.new({
  "title" => "Sweetener",
  "genre" => "Pop",
  "artist_id" => artist5.id
  })
album5.save()



binding.pry
nil
