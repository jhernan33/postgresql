select * 
from process.operations_details as opde inner join public.stages as s 
on opde.sta_id = s.stag_codi
inner join public.services as se on opde.serv_codi = se.serv_codi;