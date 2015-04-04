#!/usr/bin/env ruby
# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?
require_relative 'shared'

def calc_lattice_paths(edge_size)
  return ((edge_size * 2).factorial) / (edge_size.factorial ** 2)
end

puts calc_lattice_paths(20)
exit

# recursive approach is too slow at n = 20
# @edge_size=2
# 
# def get_path(x = 0,y = 0)
#   if x == @edge_size and y == @edge_size
#     return 1
#   elsif x == @edge_size
#     return get_path(x,y+1)
#   elsif y == @edge_size
#     return get_path(x+1,y)
#   else
#     return get_path(x,y+1) + get_path(x+1,y)
#   end
# end
# 
# puts get_path()
