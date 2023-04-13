use Prisons
--------> some queries for the project <----------------

-------- num of prisons ---------------
select count(pr_ID) as Number_of_prisons from Prison
group by pr_Address

---------> num of prisoners, their Conf_type & work_type & prison name  <------------------
select count(p_ID) as num_of_prisoners from Prisoner
group by Conf_type,work_type
select p_ID,p_Fname,p_Lname,Conf_type,work_type,pr_Name from Prisoner p join Prison pr
on p.pr_ID=pr.pr_ID

----------->  about status  <----------------
select p.p_Fname,p.p_Lname,ms.*,hp.*,pols.*,phs.*,pro.*,cp.*,sc.* from Marital_Status ms full outer join Prisoner p
on ms.p_ID=p.p_ID
full outer join
Health_Prisoner hp
on hp.p_ID=p.p_ID
full outer join
Physical_status phs
on phs.p_ID=p.p_ID
full outer join
Political_situation pols
on pols.p_ID=p.p_ID
full outer join
Professional_status pro
on pro.p_ID=p.p_ID
full outer join
cc_Prisoner cp
on cp.p_ID=p.p_ID
full outer join
Scientific_status sc
on sc.p_ID=p.p_ID

----------> about health status  <----------------
select * from Health_Prisoner hp inner join Prisoner p
on hp.p_ID=p.p_ID
inner join 
Health_status hs
on hs.hs_ID=hp.hs_ID

-------> about physical status  <-------------
select * from Physical_status phs join Prisoner p
on phs.p_ID=p.p_ID
join
Wealthy_src w
on w.phs_ID=phs.phs_ID

--------->  about political status  <-------------
select * from Political_situation pols join Prisoner p
on pols.p_ID=p.p_ID


-------  prisoners who exist as good idol ----------

select p.p_Fname+' '+p.p_Lname as prisoner_name , Exit_date , Exdate_GoodIdol
from Prisoner p
where  DATEDIFF(day , Exdate_GoodIdol , Exit_date)>0 and Exdate_GoodIdol !=''


