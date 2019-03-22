ALTER TABLE process.tracking_process
  ADD CONSTRAINT process_tracking_process_opde_codi_fk FOREIGN KEY (opde_codi)
      REFERENCES process.operations_details (opde_codi) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE CASCADE;
