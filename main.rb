#NOTE YOU HAVE TO INSTALL GEM RGL

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rgl'
end

require 'rgl/adjacency'
require 'rgl/dijkstra.rb'

citites = ["JFK", "ATL", "ORD", "SFO", "LAX", "DFW", "HKG"]
city_connections = RGL::DirectedAdjacencyGraph.new
city_connections.add_vertices "JFK", "ATL", "ORD", "SFO", "LAX", "DFW", "HKG"
traveling_cost =
{
  ['JFK', 'ATL'] => 150,
  ['ATL', 'SFO'] => 400,
  ['ORD', 'LAX'] => 200,
  ['LAX', 'DFW'] => 80,
  ['JFK', 'HKG'] => 800,
  ['ATL', 'ORD'] => 90,
  ['JFK', 'LAX'] => 500
}
traveling_cost.each { |(city1, city2), w| city_connections.add_edge(city1, city2) }

puts "######################################################"
puts "###########NOTE: CASE SENSITIVE INFO REQUIRED#########"
puts "######################################################"

puts "Hi, and welcome to cheapest route finding application."
puts "Please enter source and destination you want to find cost of. From given list"
puts citites

puts "________________________"
print "Enter source:  "
c_source = gets.chomp
print "Enter destination:  "
c_destination = gets.chomp
puts "_________________________ \n"
print "Follow up this sequence: "
begin
# puts city_connections.dijkstra_shortest_path(traveling_cost, c_source, c_destination)
destination_sequence =  city_connections.dijkstra_shortest_path(traveling_cost, c_source, c_destination)
puts destination_sequence.join(" -> ")
rescue StandardError => e
    puts e.message
end
