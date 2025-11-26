use sakila;
select *
from catalogo_pelis

where
	length > 0
    and rating is not null;