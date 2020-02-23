def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto ASC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(characters.species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC limit 1 ;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON series.author_id = authors.id JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM (SELECT series.title, COUNT(characters.species) FROM series INNER JOIN characters ON series.author_id = characters.author_id WHERE species = 'human' GROUP BY title ORDER BY COUNT(characters.species)) DESC"
end


def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name) FROM characters INNER JOIN character_books ON characters.id = character_books.character_id  GROUP BY name ORDER BY COUNT(name) DESC"
end
