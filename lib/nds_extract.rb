$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_worldwide_gross = 0

  i = 0
  while director_data[:movies][i] do 
    total_worldwide_gross += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  total_worldwide_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}

  i = 0
  while nds[i] do
    director_name = nds[i][:name]
    total = gross_for_director(nds[i])
    
    result[director_name] = total
    i += 1
  end
  result
end
