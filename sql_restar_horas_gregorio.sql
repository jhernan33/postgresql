CREATE TABLE public.operations
(
  id bigserial,
  created_at timestamp(0) without time zone,
  updated_at timestamp(0) without time zone,
  actor_id character varying(255) NOT NULL,
  act_typ integer NOT NULL,
  date_sta timestamp without time zone,
  date_end timestamp(0) without time zone,
  open boolean NOT NULL,
  CONSTRAINT operations_pkey PRIMARY KEY (id)
);
INSERT INTO public.operations(created_at, updated_at, actor_id, act_typ, date_sta, date_end, open)
VALUES ( now(), now(), 'AAA-001', 24, '2018-08-06 13:58:45', '2018-08-07 14:59:46', true);

select * from public.operations;
select cast(date_sta as character varying)::timestamp - cast(date_end as character varying)::timestamp as total from public.operations;
SELECT timestamp '2009-11-06 17:05:01' - 
timestamp '2009-10-06 17:05:01'; --&gt; Rpta: "31 days"

