--Trigger update fefi
create or replace function process.actu_fefi_oper()
returns trigger as
$$
begin
  if pg_trigger_depth() =1 then
     if (TG_OP ='UPDATE' and NEW.sta_id = 12) then
	   --if  then
	   update process.operations set oper_fefi =NULL
	   where oper_codi = OLD.oper_codi;
	   return new;
	   -- raise notice '%', OLD.oper_codi;
	    --raise notice '%', new.sta_id;
	   --end if;
	  end if;
	  if (TG_OP ='UPDATE' and NEW.sta_id = 14) then
	   update pro	cess.operations set oper_fefi = current_date
	   where oper_codi = OLD.oper_codi;
	   return new;
	  end if;
  end if;
  return null;
end;
$$ language plpgsql;

create trigger actualizacion_operacion_fecha
AFTER update on process.operations
for each row execute procedure process.actu_fefi_oper();

DROP TRIGGER actualizacion_operacion_fecha ON process.operations;
DROP FUNCTION process.actu_fefi_oper();

select * from process.operations where oper_codi = 142;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where oper_codi = 128;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where oper_codi = 137;
select oper_codi,oper_fein,oper_fefi,sta_id from process.operations where oper_codi = 136;

select * from process.operations where oper_codi = 147;
select * from notifications;
select * from notifications where view = true and not_act = true;
update notifications set not_act = false where not_id = 14;

update notifications set view = true;
delete from notifications;

"2018-05-17 09:26:38"

update process.operations set sta_id = 14 where oper_codi =128;

update process.operations set sta_id = 12 where oper_codi =128;

update process.operations set oper_fefi = null where oper_codi = 128;
update process.operations set oper_fefi = '2018-05-17 09:26:38' where oper_codi = 128;