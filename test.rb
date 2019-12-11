

def movies_with_directors_set(source)

  puts source[0][:movies][0]
# INPUT   
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
     
  # OUTPUT? 
   [[{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975,
     :director_name=>"Stephen Spielberg"},
     
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977,
     :director_name=>"Stephen Spielberg"}],
     
     [{:title=>"Avengers Endgame",
     :studio=>"Buena Vista",
     :worldwide_gross=>858371337,
     :release_year=>2019,
     :director_name=>"Russo Brothers"},
     
    {:title=>"Avengers Infinity War",
     :studio=>"Buena Vista",
     :worldwide_gross=>678815482,
     :release_year=>2018,
     :director_name=>"Russo Brothers"}]]
  
  
  
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
