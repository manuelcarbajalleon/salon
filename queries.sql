SELECT concat(firstname, " " , lastname) as Cliente, count(*) as Visitas FROM `customer` c
left join `events` e on c.id = e.customer
GROUP by concat(firstname, " " , lastname)
order by Visitas desc
