require 'pry'

class Listing

attr_accessor :city

@@all = []

def self.all
@@all
end

def initialize(city)
  @city = city
  self.class.all << self
end

def trips
  Trip.all.select{|trip| trip.listing == self}
end

def guests
  # trips = Trip.all.select{|trip| trip.listing == self}
  self.trips.map{|trip| trip.guest}
end

def trip_count
  self.trips.length
end

def self.find_all_by_city(city)
  Listing.all.select{|listing| listing.city == city}
end

def self.most_popular
  listings = Listing.all
  trip_number = Listing.all.map{|listing| listing.trip_count}
  hash = Hash[listings.zip(trip_number)]
  hash.select {|k,v| puts k if v == hash.values.max}
end

end
