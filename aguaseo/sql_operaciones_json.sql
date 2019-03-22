delete from process.operation_details ;delete from process.operations;

select * from parameters;
select * from process.operations;
select * from process.operation_details;
select codi_deop,imag_deop from process.operation_details;
select codi_deop,imag_deopd from process.operation_details;
select codi_deop,jsonb_array_elements(process.operation_details.imag_deop) from process.operation_details;
select codi_deop,jsonb_pretty(imag_deop) from process.operation_details;
select * from process.operations;

select * from process.operations where codi_oper = 13;

select * from containers where codi_acco = 2;