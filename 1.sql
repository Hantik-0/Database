Все бегуны, которые зарегистрированы на текущий марафон отображаются в таблице, как: имя, фамилия - BibNumber (CountryCode).
select distinct 
  "FirstName", 
  "LastName", 
  "BibNumber",
  r2."CountryCode"
from 
  "Registration" r 
join 
  "Runner" r2 on r."RunnerId" = r2."RunnerId" 
join
  "User" u on r2."Email" = u."Email" 
join 
  "RegistrationEvent" re on r."RegistrationId" = re."RegistrationId" 
join 
  "Event" e on re."EventId" = e."EventId" 
join 
  "Marathon" m on e."MarathonId" = m."MarathonId" 
where 
  m."MarathonId" = 5
