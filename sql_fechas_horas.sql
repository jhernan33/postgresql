select '2018-10-19 11:17:00'::
timestamp without time zone AT TIME ZONE 'UTC-5';

select current_time;
select current_date;
select current_timestamp;
select to_char(current_timestamp);
select current_timestamp at time zone 'UTC-05';
-- Format Panama
select current_timestamp,current_timestamp at time zone 'UTC+5';