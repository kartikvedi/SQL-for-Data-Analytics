select * from sales;
select * from people;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales as s
join people as p on s.SPID = p.SPID;

select s.SaleDate, s.Amount, s.PID, pr.Product
from sales as s
left join products as pr on s.PID = pr.PID;

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on s.SPID = p.SPID
join products as pr on s.PID = pr.PID;

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on s.SPID = p.SPID
join products as pr on s.PID = pr.PID
where s.amount < 500
and p.Team = 'Delish';

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on s.SPID = p.SPID
join products as pr on s.PID = pr.PID
where s.amount < 500
and p.Team = '';

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on s.SPID = p.SPID
join products as pr on s.PID = pr.PID
join geo as g on g.GeoID = s.GeoID
where s.amount < 500
and p.Team = ''
and g.Geo in ('New Zealand','India')
order by SaleDate;