-- 1
select * from
directors as d
join
movies as m
on d.id = m.director_id;

-- 2
select * from
movies as m 
join 
tickets as t
on m.id = t.movie_id;

-- 3
select d.name,m.name from
movies as m
	join directors as d on d.id = m.director_id
	join tickets as t on m.id=t.movie_id;
    
-- 4 
select * from directors as d
	left join movies as m on d.id=m.director_id; 
    
-- 5 
select * from directors as d
	right join movies as m on d.id=m.director_id; 


