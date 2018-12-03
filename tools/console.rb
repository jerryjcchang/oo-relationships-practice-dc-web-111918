require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Guests
jc = Guest.new("JC")
jc2 = Guest.new("JC")
jc3 = Guest.new("JC")
athena = Guest.new("Athena")
chao = Guest.new("Chao")
daphne = Guest.new("Daphne")
phylicia = Guest.new("Phylicia")

# Listings
la = Listing.new("Los Angeles")
la2 = Listing.new("Los Angeles")
sf = Listing.new("San Francisco")
ny = Listing.new("New York")
bos = Listing.new("Boston")
atl = Listing.new("Atlanta")

# Trips
jc_la = Trip.new(jc, la)
jc_sf = Trip.new(jc, sf)
jc_ny = Trip.new(jc, ny)
jc_atl = Trip.new(jc, atl)
athena_la = Trip.new(athena, la)
athena_sf = Trip.new(athena, sf)
phylicia_atl = Trip.new(phylicia, atl)
chao_ny = Trip.new(chao, ny)
chao_la = Trip.new(chao, la)
daphne_ny = Trip.new(daphne, ny)
daphne_bos = Trip.new(daphne, bos)

# Trip Method Tests
# puts jc_la.listing == la
# puts athena_sf.guest == athena
# puts Trip.all.include?(chao_ny)
# puts Trip.all.include?(daphne_bos)
#
# # Guest Tests
# #listings tests
# puts jc.listings.include?(la)
# puts jc.listings.include?(ny)
# puts athena.listings.include?(sf)
#
# #trips tests
# puts jc.trips
# puts athena.trips

#trips_count tests
# puts jc.trip_count == 4
# puts chao.trip_count == 2

Pry.start
