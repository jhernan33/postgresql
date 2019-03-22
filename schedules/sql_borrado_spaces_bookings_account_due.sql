select * from bookings 
-- http://192.168.0.111:8000/sb/schedules
-- ?where=[["op":"eq","field":"s.account","value":2]]
-- &join=[["table":"spaces%20as%20s","fk":"s.id",
-- "pk":"bookings.space_id","type":"inner"]]
-- &columns=["target_id%20as%20Container",
-- "s.date_to%20as%20FechaProgramado",
-- "bookings.state_id%20as%20Estatus"]
-- &sort=["s.created_at","desc"]

select * from spaces where account = 2 and target_id = '158'
select * from bookings where account = 2 and space_id in (467,468)

delete from bookings where account = 2 and space_id in (467,468);
delete from spaces where account = 2 and target_id = '158'


select * from spaces where account = 2 and target_id = '85'
select * from spaces where account = 2 and target_id = '96'
select * from bookings where account = 2 and space_id in (819)
select * from bookings where account = 2 and space_id in (815)

delete from bookings where account = 2 and space_id in (819);
delete from spaces where account = 2 and target_id = '85'

delete from bookings where account = 2 and space_id in (815);
delete from spaces where account = 2 and target_id = '96'

select * from spaces where account = 2 and target_id = '49'
select * from bookings where account = 2 and space_id in (821,834)

delete from bookings where account = 2 and space_id in (821,834);
delete from spaces where account = 2 and target_id = '49'
