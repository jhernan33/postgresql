-- http://www.sqlines.com/postgresql/oid
-- Create a table with OID column
   CREATE TABLE aircraft
   (
      name VARCHAR(90)
   ) WITH OIDS;
 
   -- Insert a row
   INSERT INTO aircraft VALUES ('Boeing 747');
 
    -- Get generated OID
    SELECT oid, name FROM aircraft;