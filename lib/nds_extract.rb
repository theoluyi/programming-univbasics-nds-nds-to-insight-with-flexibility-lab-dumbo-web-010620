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

# 1ST SUCCESS 
  # INPUT: [{movie1: "title1"}, {movie2: title2}]
  # OUTPUT: [{movie1: "title1", director: "name"}, {movie2: title2, director: "name"}]
  # TECHNIQUE: use movie_with_director_name method
def movies_with_director_key(name, movies_collection)
  array = []
  i = 0 
  while i < movies_collection.length do 
    array << movie_with_director_name(name, movies_collection[i])
    i += 1 
  end 
  array 
end

# 2ND SUCCESS 
  # INPUT 
  # [{:title=>"Movie A", :studio=>"Alpha Films", :worldwide_gross=>10},
  # {:title=>"Movie B", :studio=>"Alpha Films", :worldwide_gross=>30},
  # {:title=>"Movie C", :studio=>"Omega Films", :worldwide_gross=>30}]
  # OUTPUT 
  # {"Alpha Films" => 40, "Omega Films" => 30}
def gross_per_studio(collection)
  studio_gross = {}
  i = 0 
  while i < collection.length do 
    studio_name = collection[i][:studio]
    studio_money = collection[i][:worldwide_gross]
    if !studio_gross[studio_name]
      studio_gross[studio_name] = studio_money
    else studio_gross[studio_name]
      studio_gross[studio_name] += studio_money
    end 
    i += 1
  end 
  # pp studio_gross
  studio_gross
end

def movies_with_directors_set(source)
  
  [{:name=>"Stephen Spielberg",
  :movies=>
   [{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977}]},
 {:name=>"Russo Brothers",
  :movies=>
   [{:title=>"Avengers Endgame",
     :studio=>"Buena Vista",
     :worldwide_gross=>858371337,
     :release_year=>2019},
    {:title=>"Avengers Infinity War",
     :studio=>"Buena Vista",
     :worldwide_gross=>678815482,
     :release_year=>2018}]}]
  pp source 
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
