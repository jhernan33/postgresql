
CREATE TABLE test.Membership
(
 membership_id        serial primary key,
 membership_name     varchar(256),
 membership_lastname     varchar(256),
 membership_number     varchar(13),
 membership_due     numeric(8,4),
 membership_date     date
 );