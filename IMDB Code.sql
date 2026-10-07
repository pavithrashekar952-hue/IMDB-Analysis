use project_movie_database;

-- Get all data about movies.
select * from movies;

-- Get all data about directors.
Select * from directors;

-- Check how many movies are present in IMDB
select count(*) as movie_table_count from movies;

-- d)	Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select * from directors where name in ('James Cameron','Luc Besson','John Woo');

-- Find all directors with name starting with S
select * from directors where name like 'S%';

-- count female directors.
select count(*) as female_director_count from directors where gender = '1';

-- Find the name of the 10th first women directors?
select name from directors where gender = '1' order by id asc limit 9,1;

-- What are the 3 most popular movies?
select * from movies order by popularity desc limit 3;

-- What are the 3 most bankable movies?
select title, budget, revenue, (revenue - budget) AS profit from movies order by profit desc limit 3;

-- What is the most awarded average vote since the January 1st, 2000?
select title, release_date, vote_average from movies where release_date>='2000-01-01' order by vote_average desc limit 1;

-- Which movie(s) were directed by Brenda Chapman?
select m.original_title,m.title,m.director_id,d.name as director_name from movies as m join directors
d on m.director_id=d.id where d.name+'Brenda Chapman';
select * from directors where name = 'Brenda Chapman';
select * from movies where director_id = 4801;

-- Which director made the most movies?
select d.name as director_name, count(m.id) as movies_count from movies as m join directors d on m.director_id = d.id
 group by director_name order by movies_count desc;
 
 -- Which director is the most bankable?
 select d.name as director_name, sum(m.revenue - m.budget) as total_profit, count(m.id) as 
 movies_count from movies as m join directors d on m.director_id = d.id
 group by director_name order by total_profit desc limit 5;

