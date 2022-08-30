select GeoID, sum(Amount), avg(amount), sum(boxes)
from sales
group by GeoID;

select g.geo, sum(amount), avg(amount), sum(boxes)
from sales as s
join geo as g on s.GeoID = g.GeoID
group by g.Geo;

select pr.Category, p.Team, sum(Boxes), sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.Category, p.team;

select pr.Category, p.Team, sum(Boxes), sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <> ''
group by pr.Category, p.team
order by pr.category, p.team;

select pr.Product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc;

select pr.Product,sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10;

