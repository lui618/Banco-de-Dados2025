select count(*) from movies;

-- Produto cartesiano (Cross Join)
select count(*) from movies as m, directors as d;

-- Junçao natural
select count(*) from movies as m,directors as d
where d.id = m.director_id;

select *
from movies as m JOIN directors as d
on d.id = m.director_id;

-- junçao natural
select * from 
movies as m 
join 
directors as d
on d.id = m.director_id
where m.director_id = 1;

select * from movies as m 
	left join directors as d on d.id=m.director_id;

select * from movies as m 
	right join directors as d on d.id=m.director_id;