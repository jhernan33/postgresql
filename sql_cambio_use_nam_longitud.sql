ALTER TABLE public.drivers
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.params
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.regionalconfiguration
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.services
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.stages
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.type_vehicles
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.vehicles
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.customers_type
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.customers
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE public.brands_vehicles
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE process.tracking_process
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE process.operations_details_output
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE process.operations_details
   ALTER COLUMN use_nam TYPE character varying(50);
ALTER TABLE process.operations
   ALTER COLUMN use_nam TYPE character varying(50);