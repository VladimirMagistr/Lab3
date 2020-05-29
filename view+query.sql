Create or replace view Vovik as select petal.flower_id as Айди_цветка,
petal.lengh_cm as Лист_длин, petal.width_cm as Шир_листика, sepal.lengh_cm as Длин_чашелист,  sepal.width_cm as Ширина_чашелист, vid_irisa.spicies_name as Вид_ирис,
vid_irisa.species_id as Номер_вида
from petal inner join sepal on petal.flower_id = sepal.flower_id 
inner join vid_irisa on sepal.species_id = vid_irisa.species_id;

select * from vovik;


select avg(vovik.Лист_длин) from vovik
where Номер_вида =1
union
select avg(vovik.Лист_длин) from  vovik
where Номер_вида =2
union
select avg(vovik.Лист_длин) from vovik
where Номер_вида =3;



select  vovik.Длин_чашелист,  count(Ширина_чашелист) from vovik
group by Длин_чашелист
order by Длин_чашелист;




Select Count(Айди_цветка)/(select count(*) from vovik),  Вид_ирис from vovik
group by Вид_ирис;


