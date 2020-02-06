require('pg')
require_relative('../db/sql_runner')

class House
  attr_accessor :house_name, :logo_url
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @house_name = options['house_name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses
    (house_name, logo_url)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@house_name, @logo_url]
    @id = SqlRunner.run(sql, values)[0]["id"]
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map {|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    return House.new(SqlRunner.run(sql, values)[0])
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end
end
