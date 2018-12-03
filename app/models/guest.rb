class Guest

attr_accessor :name

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  self.class.all << self
end

def listings
  arr = Trip.all
  arr.map do |trip|
    if trip.guest == self
      trip.listing
    end
  end
end

def trips
  arr = Trip.all
  res = []
  arr.each do |trip|
    if trip.guest == self
      res << trip
    end
  end
  res
end

def trip_count
  self.trips.length
end

def self.pro_traveller
  arr = Trip.all
  res = []
  arr.each do |trip|
    if trip.guest.trip_count > 1
      res << trip.guest
    end
  end
  res.uniq
end

def self.find_all_by_name(name)
  res = []
  self.all.each do |guest|
    if guest.name == name
      res << guest
    end
  end
  res
end

end
