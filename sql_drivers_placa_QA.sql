select * from drivers;
select * from drivers where veh_pla is null;


update drivers set veh_pla ='AAA-123' where dri_dni ='12345678';
update drivers set veh_pla ='BBB-123' where dri_dni ='12345628';
update drivers set veh_pla ='CCC-123' where dri_dni ='12345679';
update drivers set veh_pla ='AAA-123' where dri_dni ='12345670';
update drivers set veh_pla ='BBB-123' where dri_dni ='v23432';
update drivers set veh_pla ='CCC-123' where dri_dni ='23443qer';
update drivers set veh_pla ='AAA-123' where dri_dni ='123442322';
select * from vehicles;

"AAA-123"
"BBB-123"
"CCC-123"