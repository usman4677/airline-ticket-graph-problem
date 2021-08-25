# Airline cheap Ticket Graph Problem
This repo contains the solution to the Airline Ticket cheapest cost problem.
Please install gem rgl
AND just run
"ruby air_line.rb"


###########################################################################################
###########################################################################################
                       Problem Statement
 
 
You are given a huge list of airline ticket prices between different cities around the world on a given day. These are all direct flights. Each element in the list has the format (source_city, destination, price).

Consider a user who is willing to take up to k connections from their origin city A to their destination B. Find the cheapest fare possible for this journey and print the itinerary for that journey.

For example, our traveler wants to go from JFK to LAX with up to 3 connections, and our input flights are as follows:

[
    ('JFK', 'ATL', 150),
    ('ATL', 'SFO', 400),
    ('ORD', 'LAX', 200),
    ('LAX', 'DFW', 80),
    ('JFK', 'HKG', 800),
    ('ATL', 'ORD', 90),
    ('JFK', 'LAX', 500),
]
Due to some improbably low flight prices, the cheapest itinerary would be JFK -> ATL -> ORD -> LAX, costing $440.

###########################################################################################
###########################################################################################

https://gist.github.com/danielpaul/4b85f81e575a422d0720aa6d637e9e1f                       
