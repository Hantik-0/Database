Спонсоры должны быть сгруппированы по благотворительным организациям, которым они перечисляют деньги.
Также должны выводится сводные данные:
•Благотворительные организации: общее количество благотворительных организаций.
•Всего спонсорских взносов: общая сумма спонсорских пожертвований, полученная для всех благотворительных организаций.
Список должен показать наименование и общее количество спонсоров получил для каждой благотворительной организации.


select 
  "CharityName", 
  sum("SponsorshipTarget"), 
  count("SponsorName") 
from 
  "Registration" r  
join 
  "Charity" c on c."CharityId" = r."CharityId"  
join 
  "Sponsorship" s on s."RegistrationId" = r."RegistrationId"  
group by 
  "CharityName"; 
 
select
  count(distinct "CharityName") as "CountCharity",
  count("SponsorName") as "CountSponsors", 
  sum("SponsorshipTarget") as "TotalCost" 
from 
  "Registration" r  
join 
  "Sponsorship" s on s."RegistrationId" = r."RegistrationId" 
join 
  "Charity" c on c."CharityId" = r."CharityId";
