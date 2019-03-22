
--Operator ~ 
select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME ~'^D';

--Operator ~ (second example)
select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME ~'[A-F]';

--Operator !
select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME !~'^D';

--Operator ! (second example)
select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME !~'[A-F]';

--Operator *

select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME ~'^.O+';

-- Operator * (second example)

select MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
from test.membership where MEMBERSHIP_LASTNAME ~*'^.O+';

