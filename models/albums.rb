require('pg')

class Album

  attr_accessor :title, :genre
  attr_reader :id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (title, genre, artist_id) VALUES ($1, $2, $3)
    RETURNING *"
    values = [@title, @genre, @artist_id]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

    def self.all()
    sql = "SELECT * FROM albums"
    albums = SqlRunner.run(sql)
    return albums.map{|album_hash|
    Album.new(album_hash)}
  end

  def albums_by_artist()
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    results = SqlRunner.run(sql,values)
    return Artist.new(results[0])
  end

    def self.find(id)
      sql = "SELECT * FROM albums WHERE id = $1"
      values= [id]
      results = SqlRunner.run(sql,values)
      return Album.new(results[0])
    end

    def delete()
      sql = "DELETE FROM albums WHERE id = $1"
      values = [@id]
      SqlRunner.run(sql,values)
    end


    def self.delete_all()
        sql = "DELETE FROM albums"
        SqlRunner.run(sql)
    end


end
