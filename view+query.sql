Create or replace view Vovik as select petal.flower_id as ����_������,
petal.lengh_cm as ����_����, petal.width_cm as ���_�������, sepal.lengh_cm as ����_��������,  sepal.width_cm as ������_��������, vid_irisa.spicies_name as ���_����,
vid_irisa.species_id as �����_����
from petal inner join sepal on petal.flower_id = sepal.flower_id 
inner join vid_irisa on sepal.species_id = vid_irisa.species_id;

select * from vovik;


select avg(vovik.����_����) from vovik
where �����_���� =1
union
select avg(vovik.����_����) from  vovik
where �����_���� =2
union
select avg(vovik.����_����) from vovik
where �����_���� =3;



select  vovik.����_��������,  count(������_��������) from vovik
group by ����_��������
order by ����_��������;




Select Count(����_������)/(select count(*) from vovik),  ���_���� from vovik
group by ���_����;


