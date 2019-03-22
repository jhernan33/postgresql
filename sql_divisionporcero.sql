select * from process.operations_details;

SELECT
 NULLIF (1, 1);

select request_count,response_count, 
case 
    when 
    request_count+response_count = 0 then 0 
    else
(response_count*100) / (request_count+response_count) 
end AS proportion 
from total_dummy_table;