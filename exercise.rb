class Location

  def initialize (name)
    @name = name
  end

  def name
    @name
  end

end


class Trip

  def initialize
    @stops = []
  end

  def stops
    @stops
  end

  def add_stops(location)
    @stops.push(location)
  end

  def trip_log
    puts "Began Trip"

   repeat = @stops.length - 1
    counter = 0

  repeat.times do
    puts "Travelled from #{ @stops[counter].name } to #{ @stops[counter + 1].name }"
      counter += 1
    end

    puts "Ended Trip."


  end
end


toronto = Location.new('Toronto')
ottawa  = Location.new('Ottawa')
montreal = Location.new('Montreal')
quebec_city = Location.new('Quebec City')
halifax = Location.new('Halifax')
st_johns = Location.new("St. John's")

trip = Trip.new

trip.add_stops(toronto)
trip.add_stops(ottawa)
trip.add_stops(montreal)
trip.add_stops(quebec_city)
trip.add_stops(halifax)
trip.add_stops(st_johns)

trip.trip_log
