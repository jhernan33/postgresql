select * from permissions where name like '%user%' order by id;
update permissions set id_table = 12 where name like '%user%';

select * from permissions where name like '%account%' order by id;
update permissions set id_table = 16 where name like '%account%';

select * from permissions where name like '%status%' order by id;
update permissions set id_table = 17 where name like '%status%';

select * from permissions where name like '%driver%' order by id;
update permissions set id_table = 5 where name like '%driver%';

select * from permissions where name like '%vehicle%' order by id;
update permissions set id_table = 4 where name like '%vehicle%';

select * from permissions where name like '%brand%' order by id;
update permissions set id_table = 18 where name like '%brand%';

select * from permissions where name like '%model%' order by id;
update permissions set id_table = 19 where name like '%model%';

select * from permissions where name like '%fleet%' order by id;
update permissions set enable = false where name like '%fleet%';

select * from permissions where name like '%vehicle%' and id >35 order by id;
update permissions set id_table = 4 where name like '%vehicle%' and id >35;

select * from permissions where name like '%type%' order by id;
update permissions set enable = false where name like '%type%';

select * from permissions where name like '%fuel%' and id >45 order by id;
update permissions set enable = false where name like '%fuel%' and id >45;

select * from permissions where name like '%regional%' order by id;
update permissions set id_table = 20 where name like '%regional%';

select * from permissions where name like '%countrie%' order by id;
update permissions set id_table = 21 where name like '%countrie%';

select * from permissions where name like '%city%' order by id;
update permissions set id_table = 22 where name like '%city%';

select * from permissions where name like '%role%' order by id;
update permissions set id_table = 13 where name like '%role%';

select * from permissions where name like '%permission%' order by id;
update permissions set id_table = 14 where name like '%permission%';

select * from permissions where name like '%provider%' order by id;
update permissions set enable = false where name like '%provider%';

select * from permissions where name like '%station%' order by id;
update permissions set enable = false where name like '%station%';

select * from permissions where name like '%report%' order by id;
update permissions set id_table = 24 where name like '%report%';

select * from permissions where name like '%customer%' order by id;
update permissions set id_table = 2 where name like '%customer%';

select * from permissions where name like '%service%' order by id;
update permissions set id_table = 3 where name like '%service%';

select * from permissions where name like '%stages%' order by id;
update permissions set id_table = 25 where name like '%stages%';

select * from permissions where name like '%operation%' and id >102 and id< 108 order by id;
update permissions set id_table = 26 where name like '%operation%' and id >102 and id< 108;

select * from permissions where name like '%operationdetail%' order by id;
update permissions set id_table = 26 where name like '%operationdetail%';

select * from permissions where name like '%automatic%' order by id;
update permissions set id_table = 11 where name like '%automatic%';

select * from permissions where name like '%notification%' order by id;
update permissions set id_table = 27 where name like '%notification%';

select * from permissions where name like '%table%' order by id;
update permissions set id_table = 28 where name like '%table%';