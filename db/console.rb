require("pry")
require_relative("../models/artists")
require_relative("../models/albums")

# Artists.delete_all()
# Albums.delete_all()

artist1 = Artist.new({"name" => "Eminem"})
artist1.save()

album1 = Album.new({
  "title" => "Kamikaze",
  "genre" => "Rap"
  "artist_id" => artist1.id
  })
album1.save()

artist2 = Artist.new({"name" => "Various"})
artist2.save()

album1 = Album.new({
  "title" => "The Greatest Showman",
  "genre" => "Motion Picture Soundtrack"
  "artist_id" => artist1.id
  })
album2.save()

artist3 = Artist.new({"name" => "Paul McCartney"})
artist3.save()

album3 = Album.new({
  "title" => "Egypt Station",
  "genre" => "Rock"
  "artist_id" => artist1.id
  })
album3.save()

artist4 = Artist.new({"name" => "Various"})
artist4.save()

album4 = Album.new({
  "title" => "Mamma Mia!",
  "genre" => "Motion Picture Soundtrack"
  "artist_id" => artist1.id
  })
album4.save()

artist5 = Artist.new({"name" => "Ariana Grande"})
artist5.save()

album5 = Album.new({
  "title" => "Sweetener",
  "genre" => "Pop"
  "artist_id" => artist1.id
  })
album5.save()



binding.pry
nil