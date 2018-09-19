require('pg')
require_relative("../db/sql_runner")

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING *"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end


  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    return artists.map{|artist_hash| Artist.new(artist_hash)}
  end


  def albums_by_artist
    sql = "SELECT * FROM albums WHERE artist_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map{|results_hash|
    Albums.new(results_hash)}
    end

    def self.find(id)
      sql = "SELECT * FROM artists WHERE id = $1"
      values= [id]
      results = SqlRunner.run(sql,values)
      return Artist.new(results[0])
    end

end
