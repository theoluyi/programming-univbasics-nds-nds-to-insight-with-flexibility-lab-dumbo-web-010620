# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end


# Your code after this point

# 1ST SUCCESS √√√
def movies_with_director_key(name, movies_collection)
  array = []
  i = 0 
  
  while i < movies_collection.length do 
    array << movie_with_director_name(name, movies_collection[i])
    i += 1 
  end 
array 

  # GOAL: For each Hash in an Array (movies_collection), provide a collection
  # of movies and a directors name to the movie_with_director_name method
  # and accumulate the returned Array of movies into a new Array that's
  # returned by this method.
  #
  # INPUT:
  # * name: A director's name
  # * movies_collection: An Array of Hashes where each Hash represents a movie
  #
  # RETURN:
  #
  # Array of Hashes where each Hash represents a movie; however, they should all have a
  # :director_name key. This addition can be done by using the provided
  # movie_with_director_name method
end


def gross_per_studio(collection)
  studio_gross = {}
  i = 0 
  
  studio_name = collection[i][:studio]
  study_money = collection[i][:worldwide_gross]
  
  # just now i was trying to reuse a thing that was already targetting a certain level to retarget that same level by adding another [] level, which of course didn't work because I was already at that level. Just needed to rewrite the pointer 
  
  studio_gross[studio_name] = study_money ###
  
  pp studio_gross ###
  
  
  # while i < collection.length do 
  #   if !studio_gross[studio_name]
  #     studio_gross[studio_name] = studio_gross[studio_name = collection[i][:worldwide_gross]
  #   else studio_gross[studio_name] += studio_gross[studio_name = collection[i][:worldwide_gross]
  #   end 
  # end 
  
  # GOAL: Given an Array of Hashes where each Hash represents a movie,
  # return a Hash that includes the total worldwide_gross of all the movies from
  # each studio.
  #
  # INPUT:
  # * collection: Array of Hashes Hash where each Hash represents a movie
  #
  # RETURN:
  #
  # Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
  
  
#    gross_per_studio
# [{:title=>"Movie A", :studio=>"Alpha Films", :worldwide_gross=>10},
# {:title=>"Movie B", :studio=>"Alpha Films", :worldwide_gross=>30},
# {:title=>"Movie C", :studio=>"Omega Films", :worldwide_gross=>30}]
#   collects each movie based on the studio key (FAILED - 3)


  studio_gross
end

def movies_with_directors_set(source)
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
